.class public abstract Lcom/unity3d/player/UnityPlayerActivity$c2020060320;
.super Landroid/app/Activity;


# direct methods
.method public static onPause(Lcom/unity3d/player/UnityPlayerActivity;)V
    .registers 2

    invoke-static {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onPause$001(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/unity3d/player/MultiWindowSupport;->saveMultiWindowMode(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/unity3d/player/MultiWindowSupport;->getAllowResizableWindow(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayerActivity;->pause$003(Lcom/unity3d/player/UnityPlayer;)V

    return-void
.end method
