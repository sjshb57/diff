.class public final synthetic Lcom/youka/iapplugin/OneTimeOfferBridge$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/billingclient/api/ProductDetailsResponseListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/youka/iapplugin/OneTimeOfferBridge$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/youka/iapplugin/OneTimeOfferBridge$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/youka/iapplugin/OneTimeOfferBridge$$ExternalSyntheticLambda1;->f$2:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V
    .registers 6

    iget-object v0, p0, Lcom/youka/iapplugin/OneTimeOfferBridge$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/youka/iapplugin/OneTimeOfferBridge$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/youka/iapplugin/OneTimeOfferBridge$$ExternalSyntheticLambda1;->f$2:Landroid/app/Activity;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/youka/iapplugin/OneTimeOfferBridge;->lambda$launchPurchaseFlow$1(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V

    return-void
.end method
