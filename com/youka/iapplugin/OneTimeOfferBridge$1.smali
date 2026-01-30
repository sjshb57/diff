.class Lcom/youka/iapplugin/OneTimeOfferBridge$1;
.super Ljava/lang/Object;
.source "OneTimeOfferBridge.java"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youka/iapplugin/OneTimeOfferBridge;->FetchOffers(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$act:Landroid/app/Activity;

.field final synthetic val$productIdsCsv:Ljava/lang/String;

.field final synthetic val$unityMethod:Ljava/lang/String;

.field final synthetic val$unityObject:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/youka/iapplugin/OneTimeOfferBridge$1;->val$act:Landroid/app/Activity;

    iput-object p2, p0, Lcom/youka/iapplugin/OneTimeOfferBridge$1;->val$productIdsCsv:Ljava/lang/String;

    iput-object p3, p0, Lcom/youka/iapplugin/OneTimeOfferBridge$1;->val$unityObject:Ljava/lang/String;

    iput-object p4, p0, Lcom/youka/iapplugin/OneTimeOfferBridge$1;->val$unityMethod:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected()V
    .registers 3

    .line 62
    const-string v0, "OneTimeOfferBridge"

    const-string v1, "onBillingServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 63
    invoke-static {v0}, Lcom/youka/iapplugin/OneTimeOfferBridge;->-$$Nest$sfputisReady(Z)V

    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .registers 6

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onBillingSetupFinished: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneTimeOfferBridge"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_3a

    const/4 p1, 0x1

    .line 53
    invoke-static {p1}, Lcom/youka/iapplugin/OneTimeOfferBridge;->-$$Nest$sfputisReady(Z)V

    .line 54
    iget-object p1, p0, Lcom/youka/iapplugin/OneTimeOfferBridge$1;->val$act:Landroid/app/Activity;

    iget-object v0, p0, Lcom/youka/iapplugin/OneTimeOfferBridge$1;->val$productIdsCsv:Ljava/lang/String;

    iget-object v1, p0, Lcom/youka/iapplugin/OneTimeOfferBridge$1;->val$unityObject:Ljava/lang/String;

    iget-object v2, p0, Lcom/youka/iapplugin/OneTimeOfferBridge$1;->val$unityMethod:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/youka/iapplugin/OneTimeOfferBridge;->-$$Nest$smquery(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_47

    .line 56
    :cond_3a
    iget-object v0, p0, Lcom/youka/iapplugin/OneTimeOfferBridge$1;->val$unityObject:Ljava/lang/String;

    iget-object v1, p0, Lcom/youka/iapplugin/OneTimeOfferBridge$1;->val$unityMethod:Ljava/lang/String;

    const-string v2, "setup_failed"

    invoke-static {v2, p1}, Lcom/youka/iapplugin/OneTimeOfferBridge;->-$$Nest$smerrorJson(Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/youka/iapplugin/OneTimeOfferBridge;->-$$Nest$smsendUnity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_47
    return-void
.end method
