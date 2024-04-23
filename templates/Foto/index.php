<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\Foto[]|\Cake\Collection\CollectionInterface $foto
 */
?>

<?php
$this->assign('title', __('Foto'));
$this->Breadcrumbs->add([
    ['title' => __('Home'), 'url' => '/'],
    ['title' => __('List Foto')],
]);
?>

<div class="row">
    <div class="col-12 mb-4">
        <div class="text-right">
            <?= $this->Html->link(__('Tambah Foto Baru'), ['action' => 'add'], ['class' => 'btn btn-primary']) ?>
        </div>
    </div>
    <?php foreach ($foto as $foto) : ?>
        <div class="col-lg-4 col-md-6 mb-4">
            <div class="card">
                <?= $this->Html->image('img/'.$foto->lokasi_foto, ['class' => 'card-img-top w-100 shadow-1-strong rounded mb-4', 'alt' => $foto->judul_foto]) ?>
                <div class="card-body">
                    <h5 class="card-title"><?= h($foto->judul_foto) ?></h5>
                    <p class="card-text"><?= h($foto->deskripsi) ?></p>
                </div>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item"><?= __('Tanggal Unggahan: ') . h($foto->tgl_unggahan) ?></li>
                    <li class="list-group-item"><?= __('Album: ') . ($foto->has('album') ? $this->Html->link($foto->album->nama_album, ['controller' => 'Album', 'action' => 'view', $foto->album->id]) : '') ?></li>
                    <li class="list-group-item"><?= __('User: ') . ($foto->has('user') ? $this->Html->link($foto->user->username, ['controller' => 'User', 'action' => 'view', $foto->user->id]) : '') ?></li>
                </ul>
                <div class="card-footer">
                    <?= $this->Html->link(__('View'), ['action' => 'view', $foto->id], ['class' => 'btn btn-primary']) ?>
                    <?= $this->Html->link(__('Edit'), ['action' => 'edit', $foto->id], ['class' => 'btn btn-primary']) ?>
                    <?= $this->Form->postLink(__('Delete'), ['action' => 'delete', $foto->id], ['confirm' => __('Are you sure you want to delete # {0}?', $foto->id), 'class' => 'btn btn-danger']) ?>
                </div>
            </div>
        </div>
    <?php endforeach; ?>
</div>
