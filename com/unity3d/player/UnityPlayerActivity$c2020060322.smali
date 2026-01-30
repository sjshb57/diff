.class public abstract Lcom/unity3d/player/UnityPlayerActivity$c2020060322;
.super Landroid/app/Activity;


# direct methods
.method public static onResume(Lcom/unity3d/player/UnityPlayerActivity;)V
    .registers 2

    .line 111
    invoke-static {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onResume$001(Landroid/app/Activity;)V

    .line 113
    invoke-static {p0}, Lcom/unity3d/player/MultiWindowSupport;->getAllowResizableWindow(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {p0}, Lcom/unity3d/player/MultiWindowSupport;->isMultiWindowModeChangedToTrue(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_10

    return-void

    .line 116
    :cond_10
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayerActivity;->resume$003(Lcom/unity3d/player/UnityPlayer;)V

    return-void
.end method
