.class public abstract Lcom/unity3d/player/UnityPlayerActivity$c2020060318;
.super Landroid/app/Activity;


# direct methods
.method public static onStart(Lcom/unity3d/player/UnityPlayerActivity;)V
    .registers 2

    invoke-static {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onStart$001(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/unity3d/player/MultiWindowSupport;->getAllowResizableWindow(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayerActivity;->resume$002(Lcom/unity3d/player/UnityPlayer;)V

    return-void
.end method
