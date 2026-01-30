.class public final Lcom/google/games/bridge/GenericResolutionActivity;
.super Landroid/app/Activity;
.source "GenericResolutionActivity.java"


# static fields
.field static final SELECT_UI_STATUS_INTERNAL_ERROR:I = 0x0

.field static final SELECT_UI_STATUS_RESULT_OK:I = -0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private finishWithResult(I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/games/bridge/GenericResolutionActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/google/games/bridge/GenericResolutionActivity;->finish()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    const/16 v0, 0x2333

    if-ne p1, v0, :cond_10

    const/4 p1, -0x1

    if-ne p2, p1, :cond_b

    invoke-direct {p0, p1}, Lcom/google/games/bridge/GenericResolutionActivity;->finishWithResult(I)V

    goto :goto_13

    :cond_b
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/games/bridge/GenericResolutionActivity;->finishWithResult(I)V

    goto :goto_13

    :cond_10
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    :goto_13
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/games/bridge/GenericResolutionActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "RequestFriendsAccessPermissionPendingIntent"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    :try_start_f
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v2, 0x2333

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/google/games/bridge/GenericResolutionActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_1e
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_f .. :try_end_1e} :catch_1f

    goto :goto_23

    :catch_1f
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/games/bridge/GenericResolutionActivity;->finishWithResult(I)V

    :goto_23
    return-void
.end method
