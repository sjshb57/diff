.class public Lcom/youka/iapplugin/OneTimeOfferBridge;
.super Ljava/lang/Object;
.source "OneTimeOfferBridge.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OneTimeOfferBridge"

.field private static billingClient:Lcom/android/billingclient/api/BillingClient;

.field private static currentPurchaseUnityMethod:Ljava/lang/String;

.field private static currentPurchaseUnityObject:Ljava/lang/String;

.field private static isReady:Z

.field private static purchasesUpdatedListener:Lcom/android/billingclient/api/PurchasesUpdatedListener;


# direct methods
.method static bridge synthetic -$$Nest$sfgetcurrentPurchaseUnityMethod()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/youka/iapplugin/OneTimeOfferBridge;->currentPurchaseUnityMethod:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetcurrentPurchaseUnityObject()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/youka/iapplugin/OneTimeOfferBridge;->currentPurchaseUnityObject:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputcurrentPurchaseUnityMethod(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/youka/iapplugin/OneTimeOfferBridge;->currentPurchaseUnityMethod:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputcurrentPurchaseUnityObject(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/youka/iapplugin/OneTimeOfferBridge;->currentPurchaseUnityObject:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputisReady(Z)V
    .registers 1

    sput-boolean p0, Lcom/youka/iapplugin/OneTimeOfferBridge;->isReady:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$smerrorJson(Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Lcom/youka/iapplugin/OneTimeOfferBridge;->errorJson(Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smlaunchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/youka/iapplugin/OneTimeOfferBridge;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smquery(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/youka/iapplugin/OneTimeOfferBridge;->query(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smsendUnity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/youka/iapplugin/OneTimeOfferBridge;->sendUnity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/youka/iapplugin/OneTimeOfferBridge$3;

    invoke-direct {v0}, Lcom/youka/iapplugin/OneTimeOfferBridge$3;-><init>()V

    sput-object v0, Lcom/youka/iapplugin/OneTimeOfferBridge;->purchasesUpdatedListener:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static FetchAllOffers(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FetchAllOffers called with: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneTimeOfferBridge"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_5a

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_22

    goto :goto_5a

    :cond_22
    sget-object v1, Lcom/youka/iapplugin/OneTimeOfferBridge;->billingClient:Lcom/android/billingclient/api/BillingClient;

    if-nez v1, :cond_46

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v1

    sget-object v2, Lcom/youka/iapplugin/OneTimeOfferBridge;->purchasesUpdatedListener:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v1

    invoke-static {}, Lcom/android/billingclient/api/PendingPurchasesParams;->newBuilder()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->enableOneTimeProducts()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->build()Lcom/android/billingclient/api/PendingPurchasesParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases(Lcom/android/billingclient/api/PendingPurchasesParams;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object v1

    sput-object v1, Lcom/youka/iapplugin/OneTimeOfferBridge;->billingClient:Lcom/android/billingclient/api/BillingClient;

    :cond_46
    sget-boolean v1, Lcom/youka/iapplugin/OneTimeOfferBridge;->isReady:Z

    if-nez v1, :cond_55

    sget-object v1, Lcom/youka/iapplugin/OneTimeOfferBridge;->billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v2, Lcom/youka/iapplugin/OneTimeOfferBridge$2;

    invoke-direct {v2, v0, p0, p1, p2}, Lcom/youka/iapplugin/OneTimeOfferBridge$2;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    goto :goto_59

    :cond_55
    const/4 v1, 0x1

    invoke-static {v0, p0, p1, p2, v1}, Lcom/youka/iapplugin/OneTimeOfferBridge;->query(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_59
    return-void

    :cond_5a
    :goto_5a
    const-string p0, "FetchAllOffers: productIdsCsv is empty, please provide product IDs in Unity"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "empty_ids"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/youka/iapplugin/OneTimeOfferBridge;->errorJson(Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/youka/iapplugin/OneTimeOfferBridge;->sendUnity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static FetchOffers(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FetchOffers called with: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneTimeOfferBridge"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/youka/iapplugin/OneTimeOfferBridge;->billingClient:Lcom/android/billingclient/api/BillingClient;

    if-nez v1, :cond_39

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v1

    sget-object v2, Lcom/youka/iapplugin/OneTimeOfferBridge;->purchasesUpdatedListener:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v1

    invoke-static {}, Lcom/android/billingclient/api/PendingPurchasesParams;->newBuilder()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->enableOneTimeProducts()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->build()Lcom/android/billingclient/api/PendingPurchasesParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases(Lcom/android/billingclient/api/PendingPurchasesParams;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object v1

    sput-object v1, Lcom/youka/iapplugin/OneTimeOfferBridge;->billingClient:Lcom/android/billingclient/api/BillingClient;

    :cond_39
    sget-boolean v1, Lcom/youka/iapplugin/OneTimeOfferBridge;->isReady:Z

    if-nez v1, :cond_48

    sget-object v1, Lcom/youka/iapplugin/OneTimeOfferBridge;->billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v2, Lcom/youka/iapplugin/OneTimeOfferBridge$1;

    invoke-direct {v2, v0, p0, p1, p2}, Lcom/youka/iapplugin/OneTimeOfferBridge$1;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    goto :goto_4c

    :cond_48
    const/4 v1, 0x0

    invoke-static {v0, p0, p1, p2, v1}, Lcom/youka/iapplugin/OneTimeOfferBridge;->query(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_4c
    return-void
.end method

.method public static PurchaseWithOffer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    sget-object v2, Landroidx/privacysandbox/ads/adservices/internal/cwk/rPKJFT;->uGjILSMfVwGP:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", offerToken="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OneTimeOfferBridge"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p0, :cond_88

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2c

    goto :goto_88

    :cond_2c
    if-eqz p1, :cond_79

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_39

    goto :goto_79

    :cond_39
    sput-object p2, Lcom/youka/iapplugin/OneTimeOfferBridge;->currentPurchaseUnityObject:Ljava/lang/String;

    sput-object p3, Lcom/youka/iapplugin/OneTimeOfferBridge;->currentPurchaseUnityMethod:Ljava/lang/String;

    sget-object v0, Lcom/youka/iapplugin/OneTimeOfferBridge;->billingClient:Lcom/android/billingclient/api/BillingClient;

    if-nez v0, :cond_61

    invoke-static {v1}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    sget-object v2, Lcom/youka/iapplugin/OneTimeOfferBridge;->purchasesUpdatedListener:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    invoke-static {}, Lcom/android/billingclient/api/PendingPurchasesParams;->newBuilder()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->enableOneTimeProducts()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->build()Lcom/android/billingclient/api/PendingPurchasesParams;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases(Lcom/android/billingclient/api/PendingPurchasesParams;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object v0

    sput-object v0, Lcom/youka/iapplugin/OneTimeOfferBridge;->billingClient:Lcom/android/billingclient/api/BillingClient;

    :cond_61
    sget-boolean v0, Lcom/youka/iapplugin/OneTimeOfferBridge;->isReady:Z

    if-nez v0, :cond_75

    sget-object v6, Lcom/youka/iapplugin/OneTimeOfferBridge;->billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v7, Lcom/youka/iapplugin/OneTimeOfferBridge$4;

    move-object v0, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/youka/iapplugin/OneTimeOfferBridge$4;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    goto :goto_78

    :cond_75
    invoke-static {v1, p0, p1}, Lcom/youka/iapplugin/OneTimeOfferBridge;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_78
    return-void

    :cond_79
    :goto_79
    const-string p0, "PurchaseWithOffer: offerToken is empty"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "empty_offer_token"

    invoke-static {p0, v0}, Lcom/youka/iapplugin/OneTimeOfferBridge;->errorJson(Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p3, p0}, Lcom/youka/iapplugin/OneTimeOfferBridge;->sendUnity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_88
    :goto_88
    const-string p0, "PurchaseWithOffer: productId is empty"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "empty_product_id"

    invoke-static {p0, v0}, Lcom/youka/iapplugin/OneTimeOfferBridge;->errorJson(Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p3, p0}, Lcom/youka/iapplugin/OneTimeOfferBridge;->sendUnity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static errorJson(Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;)Ljava/lang/String;
    .registers 5

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "error"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "success"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    if-eqz p1, :cond_24

    const-string v1, "responseCode"

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "debugMessage"

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_24
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_29

    return-object p0

    :catch_29
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "{\"error\":\""

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\",\"success\":false}"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$launchPurchaseFlow$1(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V
    .registers 9

    invoke-virtual {p3}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    const-string v1, "OneTimeOfferBridge"

    const/4 v2, 0x0

    if-eqz v0, :cond_30

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "queryProductDetailsAsync failed: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/youka/iapplugin/OneTimeOfferBridge;->currentPurchaseUnityObject:Ljava/lang/String;

    sget-object p1, Lcom/youka/iapplugin/OneTimeOfferBridge;->currentPurchaseUnityMethod:Ljava/lang/String;

    const-string p2, "query_failed"

    invoke-static {p2, p3}, Lcom/youka/iapplugin/OneTimeOfferBridge;->errorJson(Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/youka/iapplugin/OneTimeOfferBridge;->sendUnity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/youka/iapplugin/OneTimeOfferBridge;->currentPurchaseUnityObject:Ljava/lang/String;

    sput-object v2, Lcom/youka/iapplugin/OneTimeOfferBridge;->currentPurchaseUnityMethod:Ljava/lang/String;

    return-void

    :cond_30
    invoke-virtual {p4}, Lcom/android/billingclient/api/QueryProductDetailsResult;->getProductDetailsList()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_f1

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_3e

    goto/16 :goto_f1

    :cond_3e
    const/4 p0, 0x0

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {p3}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetailsList()Ljava/util/List;

    move-result-object p4

    if-eqz p4, :cond_66

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_4f
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getOfferToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    goto :goto_67

    :cond_66
    move-object v0, v2

    :goto_67
    if-nez v0, :cond_8d

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "OfferToken not found: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/youka/iapplugin/OneTimeOfferBridge;->currentPurchaseUnityObject:Ljava/lang/String;

    sget-object p1, Lcom/youka/iapplugin/OneTimeOfferBridge;->currentPurchaseUnityMethod:Ljava/lang/String;

    const/4 p2, 0x0

    sget-object p2, Lcom/google/android/gms/common/providers/uZkk/KFzQBytWuUcFq;->oLRBCP:Ljava/lang/String;

    invoke-static {p2, v2}, Lcom/youka/iapplugin/OneTimeOfferBridge;->errorJson(Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/youka/iapplugin/OneTimeOfferBridge;->sendUnity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/youka/iapplugin/OneTimeOfferBridge;->currentPurchaseUnityObject:Ljava/lang/String;

    sput-object v2, Lcom/youka/iapplugin/OneTimeOfferBridge;->currentPurchaseUnityMethod:Ljava/lang/String;

    return-void

    :cond_8d
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setProductDetails(Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setOfferToken(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object p1

    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p3

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    move-result-object p1

    const/4 p4, 0x1

    new-array p4, p4, [Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    aput-object p1, p4, p0

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setProductDetailsParamsList(Ljava/util/List;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object p0

    sget-object p1, Lcom/youka/iapplugin/OneTimeOfferBridge;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {p1, p2, p0}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "launchBillingFlow result: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-eqz p1, :cond_f0

    sget-object p1, Lcom/youka/iapplugin/OneTimeOfferBridge;->currentPurchaseUnityObject:Ljava/lang/String;

    sget-object p2, Lcom/youka/iapplugin/OneTimeOfferBridge;->currentPurchaseUnityMethod:Ljava/lang/String;

    const-string p3, "launch_failed"

    invoke-static {p3, p0}, Lcom/youka/iapplugin/OneTimeOfferBridge;->errorJson(Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/youka/iapplugin/OneTimeOfferBridge;->sendUnity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/youka/iapplugin/OneTimeOfferBridge;->currentPurchaseUnityObject:Ljava/lang/String;

    sput-object v2, Lcom/youka/iapplugin/OneTimeOfferBridge;->currentPurchaseUnityMethod:Ljava/lang/String;

    :cond_f0
    return-void

    :cond_f1
    :goto_f1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "ProductDetails not found for: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/youka/iapplugin/OneTimeOfferBridge;->currentPurchaseUnityObject:Ljava/lang/String;

    sget-object p1, Lcom/youka/iapplugin/OneTimeOfferBridge;->currentPurchaseUnityMethod:Ljava/lang/String;

    const-string p2, "product_not_found"

    invoke-static {p2, v2}, Lcom/youka/iapplugin/OneTimeOfferBridge;->errorJson(Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/youka/iapplugin/OneTimeOfferBridge;->sendUnity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/youka/iapplugin/OneTimeOfferBridge;->currentPurchaseUnityObject:Ljava/lang/String;

    sput-object v2, Lcom/youka/iapplugin/OneTimeOfferBridge;->currentPurchaseUnityMethod:Ljava/lang/String;

    return-void
.end method

.method static synthetic lambda$query$0(Ljava/lang/String;Ljava/lang/String;ZLcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V
    .registers 16

    const-string v0, "查询返回的商品数量: "

    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    sget-object v2, Lcom/google/android/gms/security/sW/SFkL;->jFwFBXPyGUX:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneTimeOfferBridge"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    if-eqz v1, :cond_36

    const-string p2, "query_failed"

    invoke-static {p2, p3}, Lcom/youka/iapplugin/OneTimeOfferBridge;->errorJson(Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/youka/iapplugin/OneTimeOfferBridge;->sendUnity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_36
    :try_start_36
    new-instance p3, Lorg/json/JSONArray;

    invoke-direct {p3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p4}, Lcom/android/billingclient/api/QueryProductDetailsResult;->getProductDetailsList()Ljava/util/List;

    move-result-object p4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p4, :cond_4c

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_4d

    :cond_4c
    move v3, v0

    :goto_4d
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_1bc

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1bc

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_63
    :goto_63
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/ProductDetails;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "处理商品: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetailsList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  购买选项数量: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_9c

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_9d

    :cond_9c
    move v5, v0

    :goto_9d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_a7} :catch_1e1

    const/4 v4, 0x0

    sget-object v4, Lkotlinx/coroutines/future/xI/AZbRohQeEzrszi;->sXld:Ljava/lang/String;

    if-eqz v3, :cond_187

    :try_start_ac
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_b4

    goto/16 :goto_187

    :cond_b4
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_63

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "offerToken"

    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getOfferToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "currency"

    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "priceMicros"

    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceAmountMicros()J

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getFullPriceMicros()Ljava/lang/Long;

    move-result-object v7

    if-eqz v7, :cond_fa

    const-string v7, "fullPriceMicros"

    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getFullPriceMicros()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_fa
    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getDiscountDisplayInfo()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$DiscountDisplayInfo;

    move-result-object v7

    if-eqz v7, :cond_120

    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getDiscountDisplayInfo()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$DiscountDisplayInfo;

    move-result-object v7

    const-string v8, "percentDiscount"

    invoke-virtual {v7}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$DiscountDisplayInfo;->getPercentageDiscount()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v7}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$DiscountDisplayInfo;->getDiscountAmount()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$DiscountDisplayInfo$DiscountAmount;

    move-result-object v8

    if-eqz v8, :cond_120

    const-string v8, "discountAmountMicros"

    invoke-virtual {v7}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$DiscountDisplayInfo;->getDiscountAmount()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$DiscountDisplayInfo$DiscountAmount;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$DiscountDisplayInfo$DiscountAmount;->getDiscountAmountMicros()J

    move-result-wide v9

    invoke-virtual {v6, v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_120
    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getRentalDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$RentalDetails;

    move-result-object v7

    if-eqz v7, :cond_14a

    const-string v7, "rentalPeriod"

    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getRentalDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$RentalDetails;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$RentalDetails;->getRentalPeriod()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getRentalDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$RentalDetails;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$RentalDetails;->getRentalExpirationPeriod()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_14a

    const-string v7, "rentalExpirationPeriod"

    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getRentalDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$RentalDetails;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$RentalDetails;->getRentalExpirationPeriod()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_14a
    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getValidTimeWindow()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$ValidTimeWindow;

    move-result-object v7

    if-eqz v7, :cond_16e

    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getValidTimeWindow()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$ValidTimeWindow;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$ValidTimeWindow;->getStartTimeMillis()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$ValidTimeWindow;->getEndTimeMillis()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-string v5, "startTimeMillis"

    invoke-virtual {v6, v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "endTimeMillis"

    invoke-virtual {v6, v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_16e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  找到优惠: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_b8

    :cond_187
    :goto_187
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  商品 "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " 没有购买选项或优惠"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_63

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "hasOffers"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {p3, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_63

    :cond_1bc
    const-string p2, "查询返回的商品列表为空，可能原因：1)商品ID不存在 2)商品未在Google Play Console中配置"

    invoke-static {v2, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "最终返回的商品/优惠数量: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/youka/iapplugin/OneTimeOfferBridge;->sendUnity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e0
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_1e0} :catch_1e1

    goto :goto_1f1

    :catch_1e1
    move-exception p2

    const-string p3, "parse error"

    invoke-static {v2, p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p2, "parse_error"

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/youka/iapplugin/OneTimeOfferBridge;->errorJson(Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/youka/iapplugin/OneTimeOfferBridge;->sendUnity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1f1
    return-void
.end method

.method private static launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductId(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v1

    const-string v2, "inapp"

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->setProductList(Ljava/util/List;)Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams;

    move-result-object v0

    sget-object v1, Lcom/youka/iapplugin/OneTimeOfferBridge;->billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v2, Lcom/youka/iapplugin/OneTimeOfferBridge$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1, p2, p0}, Lcom/youka/iapplugin/OneTimeOfferBridge$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/billingclient/api/BillingClient;->queryProductDetailsAsync(Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_31

    goto :goto_4b

    :catch_31
    move-exception p0

    const-string p1, "OneTimeOfferBridge"

    const-string p2, "launchPurchaseFlow error"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p0, Lcom/youka/iapplugin/OneTimeOfferBridge;->currentPurchaseUnityObject:Ljava/lang/String;

    sget-object p1, Lcom/youka/iapplugin/OneTimeOfferBridge;->currentPurchaseUnityMethod:Ljava/lang/String;

    const-string p2, "exception"

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/youka/iapplugin/OneTimeOfferBridge;->errorJson(Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/youka/iapplugin/OneTimeOfferBridge;->sendUnity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/youka/iapplugin/OneTimeOfferBridge;->currentPurchaseUnityObject:Ljava/lang/String;

    sput-object v0, Lcom/youka/iapplugin/OneTimeOfferBridge;->currentPurchaseUnityMethod:Ljava/lang/String;

    :goto_4b
    return-void
.end method

.method private static query(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 10

    const/4 p0, 0x0

    :try_start_1
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_36

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1d

    goto :goto_33

    :cond_1d
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductId(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v4, Lcom/google/android/datatransport/runtime/backends/oKH/lWcvVmRwzmOI;->HVqTrITj:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_36
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_46

    const-string p1, "no_ids"

    invoke-static {p1, p0}, Lcom/youka/iapplugin/OneTimeOfferBridge;->errorJson(Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lcom/youka/iapplugin/OneTimeOfferBridge;->sendUnity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_46
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->setProductList(Ljava/util/List;)Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams;

    move-result-object p1

    sget-object v0, Lcom/youka/iapplugin/OneTimeOfferBridge;->billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v1, Lcom/youka/iapplugin/OneTimeOfferBridge$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, p3, p4}, Lcom/youka/iapplugin/OneTimeOfferBridge$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, p1, v1}, Lcom/android/billingclient/api/BillingClient;->queryProductDetailsAsync(Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5c} :catch_5d

    goto :goto_6e

    :catch_5d
    move-exception p1

    const-string p4, "OneTimeOfferBridge"

    const-string v0, "query error"

    invoke-static {p4, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p1, "exception"

    invoke-static {p1, p0}, Lcom/youka/iapplugin/OneTimeOfferBridge;->errorJson(Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p3, p0}, Lcom/youka/iapplugin/OneTimeOfferBridge;->sendUnity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_6e
    return-void
.end method

.method private static sendUnity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UnitySendMessage -> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneTimeOfferBridge"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_2e

    if-eqz p1, :cond_2e

    if-nez p2, :cond_2b

    const-string p2, ""

    :cond_2b
    invoke-static {p0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e
    return-void
.end method
