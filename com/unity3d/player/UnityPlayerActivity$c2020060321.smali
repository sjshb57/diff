.class public abstract Lcom/unity3d/player/UnityPlayerActivity$c2020060321;
.super Landroid/app/Activity;


# direct methods
.method public static onCreate(Lcom/unity3d/player/UnityPlayerActivity;Landroid/os/Bundle;)V
    .registers 4

    const/4 v0, 0x1

    .line 34
    invoke-static {p0, v0}, Lcom/unity3d/player/UnityPlayerActivity;->requestWindowFeature$001(Lcom/unity3d/player/UnityPlayerActivity;I)Z

    .line 35
    invoke-static {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->onCreate$002(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 37
    invoke-static {p0}, Lcom/unity3d/player/UnityPlayerActivity;->getIntent$003(Lcom/unity3d/player/UnityPlayerActivity;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "unity"

    invoke-static {p1, v0}, Lcom/unity3d/player/UnityPlayerActivity;->getStringExtra$004(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->updateUnityCommandLineArguments$005(Lcom/unity3d/player/UnityPlayerActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 38
    invoke-static {p0}, Lcom/unity3d/player/UnityPlayerActivity;->getIntent$006(Lcom/unity3d/player/UnityPlayerActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->putExtra$007(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    new-instance p1, Lcom/unity3d/player/UnityPlayer;

    invoke-direct {p1, p0, p0}, Lcom/unity3d/player/UnityPlayer;-><init>(Landroid/content/Context;Lcom/unity3d/player/IUnityPlayerLifecycleEvents;)V

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    .line 41
    invoke-static {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->setContentView$008(Lcom/unity3d/player/UnityPlayerActivity;Landroid/view/View;)V

    .line 42
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p1}, Lcom/unity3d/player/UnityPlayerActivity;->requestFocus$009(Lcom/unity3d/player/UnityPlayer;)Z

    return-void
.end method
