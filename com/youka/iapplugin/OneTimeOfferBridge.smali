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

    .line 242
    new-instance v0, Lcom/youka/iapplugin/OneTimeOfferBridge$3;

    invoke-direct {v0}, Lcom/youka/iapplugin/OneTimeOfferBridge$3;-><init>()V

    sput-object v0, Lcom/youka/iapplugin/OneTimeOfferBridge;->purchasesUpdatedListener:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static FetchAllOffers(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 76
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FetchAllOffers called with: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneTimeOfferBridge"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_5a

    .line 80
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_22

    goto :goto_5a

    .line 86
    :cond_22
    sget-object v1, Lcom/youka/iapplugin/OneTimeOfferBridge;->billingClient:Lcom/android/billingclient/api/BillingClient;

    if-nez v1, :cond_46

    .line 87
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v1

    sget-object v2, Lcom/youka/iapplugin/OneTimeOfferBridge;->purchasesUpdatedListener:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    .line 88
    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v1

    .line 90
    invoke-static {}, Lcom/android/billingclient/api/PendingPurchasesParams;->newBuilder()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;

    move-result-object v2

    .line 91
    invoke-virtual {v2}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->enableOneTimeProducts()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;

    move-result-object v2

    .line 92
    invoke-virtual {v2}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->build()Lcom/android/billingclient/api/PendingPurchasesParams;

    move-result-object v2

    .line 89
    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases(Lcom/android/billingclient/api/PendingPurchasesParams;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v1

    .line 94
    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object v1

    sput-object v1, Lcom/youka/iapplugin/OneTimeOfferBridge;->billingClient:Lcom/android/billingclient/api/BillingClient;

    .line 97
    :cond_46
    sget-boolean v1, Lcom/youka/iapplugin/OneTimeOfferBridge;->isReady:Z

    if-nez v1, :cond_55

    .line 98
    sget-object v1, Lcom/youka/iapplugin/OneTimeOfferBridge;->billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v2, Lcom/youka/iapplugin/OneTimeOfferBridge$2;

    invoke-direct {v2, v0, p0, p1, p2}, Lcom/youka/iapplugin/OneTimeOfferBridge$2;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    goto :goto_59

    :cond_55
    const/4 v1, 0x1

    .line 117
    invoke-static {v0, p0, p1, p2, v1}, Lcom/youka/iapplugin/OneTimeOfferBridge;->query(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_59
    return-void

    .line 81
    :cond_5a
    :goto_5a
    const-string p0, "FetchAllOffers: productIdsCsv is empty, please provide product IDs in Unity"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-string p0, "empty_ids"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/youka/iapplugin/OneTimeOfferBridge;->errorJson(Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/youka/iapplugin/OneTimeOfferBridge;->sendUnity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static FetchOffers(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 33
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FetchOffers called with: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneTimeOfferBridge"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    sget-object v1, Lcom/youka/iapplugin/OneTimeOfferBridge;->billingClient:Lcom/android/billingclient/api/BillingClient;

    if-nez v1, :cond_39

    .line 37
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v1

    sget-object v2, Lcom/youka/iapplugin/OneTimeOfferBridge;->purchasesUpdatedListener:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    .line 38
    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v1

    .line 40
    invoke-static {}, Lcom/android/billingclient/api/PendingPurchasesParams;->newBuilder()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;

    move-result-object v2

    .line 41
    invoke-virtual {v2}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->enableOneTimeProducts()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;

    move-result-object v2

    .line 42
    invoke-virtual {v2}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->build()Lcom/android/billingclient/api/PendingPurchasesParams;

    move-result-object v2

    .line 39
    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases(Lcom/android/billingclient/api/PendingPurchasesParams;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object v1

    sput-object v1, Lcom/youka/iapplugin/OneTimeOfferBridge;->billingClient:Lcom/android/billingclient/api/BillingClient;

    .line 47
    :cond_39
    sget-boolean v1, Lcom/youka/iapplugin/OneTimeOfferBridge;->isReady:Z

    if-nez v1, :cond_48

    .line 48
    sget-object v1, Lcom/youka/iapplugin/OneTimeOfferBridge;->billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v2, Lcom/youka/iapplugin/OneTimeOfferBridge$1;

    invoke-direct {v2, v0, p0, p1, p2}, Lcom/youka/iapplugin/OneTimeOfferBridge$1;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    goto :goto_4c

    :cond_48
    const/4 v1, 0x0

    .line 67
    invoke-static {v0, p0, p1, p2, v1}, Lcom/youka/iapplugin/OneTimeOfferBridge;->query(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_4c
    return-void
.end method

.method public static PurchaseWithOffer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 304
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 305
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

    .line 307
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2c

    goto :goto_88

    :cond_2c
    if-eqz p1, :cond_79

    .line 313
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_39

    goto :goto_79

    .line 320
    :cond_39
    sput-object p2, Lcom/youka/iapplugin/OneTimeOfferBridge;->currentPurchaseUnityObject:Ljava/lang/String;

    .line 321
    sput-object p3, Lcom/youka/iapplugin/OneTimeOfferBridge;->currentPurchaseUnityMethod:Ljava/lang/String;

    .line 324
    sget-object v0, Lcom/youka/iapplugin/OneTimeOfferBridge;->billingClient:Lcom/android/billingclient/api/BillingClient;

    if-nez v0, :cond_61

    .line 325
    invoke-static {v1}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    sget-object v2, Lcom/youka/iapplugin/OneTimeOfferBridge;->purchasesUpdatedListener:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    .line 326
    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    .line 328
    invoke-static {}, Lcom/android/billingclient/api/PendingPurchasesParams;->newBuilder()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;

    move-result-object v2

    .line 329
    invoke-virtual {v2}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->enableOneTimeProducts()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;

    move-result-object v2

    .line 330
    invoke-virtual {v2}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->build()Lcom/android/billingclient/api/PendingPurchasesParams;

    move-result-object v2

    .line 327
    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases(Lcom/android/billingclient/api/PendingPurchasesParams;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    .line 332
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object v0

    sput-object v0, Lcom/youka/iapplugin/OneTimeOfferBridge;->billingClient:Lcom/android/billingclient/api/BillingClient;

    .line 336
    :cond_61
    sget-boolean v0, Lcom/youka/iapplugin/OneTimeOfferBridge;->isReady:Z

    if-nez v0, :cond_75

    .line 337
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

    .line 358
    :cond_75
    invoke-static {v1, p0, p1}, Lcom/youka/iapplugin/OneTimeOfferBridge;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_78
    return-void

    .line 314
    :cond_79
    :goto_79
    const-string p0, "PurchaseWithOffer: offerToken is empty"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const-string p0, "empty_offer_token"

    invoke-static {p0, v0}, Lcom/youka/iapplugin/OneTimeOfferBridge;->errorJson(Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p3, p0}, Lcom/youka/iapplugin/OneTimeOfferBridge;->sendUnity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 308
    :cond_88
    :goto_88
    const-string p0, "PurchaseWithOffer: productId is empty"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const-string p0, "empty_product_id"

    invoke-static {p0, v0}, Lcom/youka/iapplugin/OneTimeOfferBridge;->errorJson(Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p3, p0}, Lcom/youka/iapplugin/OneTimeOfferBridge;->sendUnity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static errorJson(Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;)Ljava/lang/String;
    .registers 5

    .line 447
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 448
    const-string v1, "error"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 449
    const-string v1, "success"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    if-eqz p1, :cond_24

    .line 451
    const-string v1, "responseCode"

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 452
    const-string v1, "debugMessage"

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 454
    :cond_24
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_29

    return-object p0

    .line 456
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

    .line 377
    invoke-virtual {p3}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    const-string v1, "OneTimeOfferBridge"

    const/4 v2, 0x0

    if-eqz v0, :cond_30

    .line 378
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "queryProductDetailsAsync failed: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    sget-object p0, Lcom/youka/iapplugin/OneTimeOfferBridge;->currentPurchaseUnityObject:Ljava/lang/String;

    sget-object p1, Lcom/youka/iapplugin/OneTimeOfferBridge;->currentPurchaseUnityMethod:Ljava/lang/String;

    const-string p2, "query_failed"

    invoke-static {p2, p3}, Lcom/youka/iapplugin/OneTimeOfferBridge;->errorJson(Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/youka/iapplugin/OneTimeOfferBridge;->sendUnity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    sput-object v2, Lcom/youka/iapplugin/OneTimeOfferBridge;->currentPurchaseUnityObject:Ljava/lang/String;

    .line 381
    sput-object v2, Lcom/youka/iapplugin/OneTimeOfferBridge;->currentPurchaseUnityMethod:Ljava/lang/String;

    return-void

    .line 385
    :cond_30
    invoke-virtual {p4}, Lcom/android/billingclient/api/QueryProductDetailsResult;->getProductDetailsList()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_f1

    .line 386
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_3e

    goto/16 :goto_f1

    :cond_3e
    const/4 p0, 0x0

    .line 394
    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/billingclient/api/ProductDetails;

    .line 398
    invoke-virtual {p3}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetailsList()Ljava/util/List;

    move-result-object p4

    if-eqz p4, :cond_66

    .line 400
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_4f
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    .line 401
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

    .line 409
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "OfferToken not found: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    sget-object p0, Lcom/youka/iapplugin/OneTimeOfferBridge;->currentPurchaseUnityObject:Ljava/lang/String;

    sget-object p1, Lcom/youka/iapplugin/OneTimeOfferBridge;->currentPurchaseUnityMethod:Ljava/lang/String;

    const/4 p2, 0x0

    sget-object p2, Lcom/google/android/gms/common/providers/uZkk/KFzQBytWuUcFq;->oLRBCP:Ljava/lang/String;

    invoke-static {p2, v2}, Lcom/youka/iapplugin/OneTimeOfferBridge;->errorJson(Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/youka/iapplugin/OneTimeOfferBridge;->sendUnity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    sput-object v2, Lcom/youka/iapplugin/OneTimeOfferBridge;->currentPurchaseUnityObject:Ljava/lang/String;

    .line 412
    sput-object v2, Lcom/youka/iapplugin/OneTimeOfferBridge;->currentPurchaseUnityMethod:Ljava/lang/String;

    return-void

    .line 418
    :cond_8d
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object p4

    .line 419
    invoke-virtual {p4, p3}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setProductDetails(Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object p3

    .line 420
    invoke-virtual {p3, p1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setOfferToken(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object p1

    .line 422
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p3

    .line 423
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    move-result-object p1

    const/4 p4, 0x1

    new-array p4, p4, [Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    aput-object p1, p4, p0

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setProductDetailsParamsList(Ljava/util/List;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p0

    .line 424
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object p0

    .line 427
    sget-object p1, Lcom/youka/iapplugin/OneTimeOfferBridge;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {p1, p2, p0}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p0

    .line 428
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

    .line 430
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-eqz p1, :cond_f0

    .line 431
    sget-object p1, Lcom/youka/iapplugin/OneTimeOfferBridge;->currentPurchaseUnityObject:Ljava/lang/String;

    sget-object p2, Lcom/youka/iapplugin/OneTimeOfferBridge;->currentPurchaseUnityMethod:Ljava/lang/String;

    const-string p3, "launch_failed"

    invoke-static {p3, p0}, Lcom/youka/iapplugin/OneTimeOfferBridge;->errorJson(Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/youka/iapplugin/OneTimeOfferBridge;->sendUnity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    sput-object v2, Lcom/youka/iapplugin/OneTimeOfferBridge;->currentPurchaseUnityObject:Ljava/lang/String;

    .line 433
    sput-object v2, Lcom/youka/iapplugin/OneTimeOfferBridge;->currentPurchaseUnityMethod:Ljava/lang/String;

    :cond_f0
    return-void

    .line 387
    :cond_f1
    :goto_f1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "ProductDetails not found for: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    sget-object p0, Lcom/youka/iapplugin/OneTimeOfferBridge;->currentPurchaseUnityObject:Ljava/lang/String;

    sget-object p1, Lcom/youka/iapplugin/OneTimeOfferBridge;->currentPurchaseUnityMethod:Ljava/lang/String;

    const-string p2, "product_not_found"

    invoke-static {p2, v2}, Lcom/youka/iapplugin/OneTimeOfferBridge;->errorJson(Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/youka/iapplugin/OneTimeOfferBridge;->sendUnity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    sput-object v2, Lcom/youka/iapplugin/OneTimeOfferBridge;->currentPurchaseUnityObject:Ljava/lang/String;

    .line 390
    sput-object v2, Lcom/youka/iapplugin/OneTimeOfferBridge;->currentPurchaseUnityMethod:Ljava/lang/String;

    return-void
.end method

.method static synthetic lambda$query$0(Ljava/lang/String;Ljava/lang/String;ZLcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V
    .registers 16

    const-string v0, "查询返回的商品数量: "

    .line 145
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

    .line 146
    invoke-virtual {p3}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    if-eqz v1, :cond_36

    .line 147
    const-string p2, "query_failed"

    invoke-static {p2, p3}, Lcom/youka/iapplugin/OneTimeOfferBridge;->errorJson(Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/youka/iapplugin/OneTimeOfferBridge;->sendUnity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 151
    :cond_36
    :try_start_36
    new-instance p3, Lorg/json/JSONArray;

    invoke-direct {p3}, Lorg/json/JSONArray;-><init>()V

    .line 152
    invoke-virtual {p4}, Lcom/android/billingclient/api/QueryProductDetailsResult;->getProductDetailsList()Ljava/util/List;

    move-result-object p4

    .line 153
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

    .line 155
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1bc

    .line 156
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

    .line 157
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

    .line 159
    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetailsList()Ljava/util/List;

    move-result-object v3

    .line 160
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

    .line 162
    const/4 v4, 0x0

    sget-object v4, Lkotlinx/coroutines/future/xI/AZbRohQeEzrszi;->sXld:Ljava/lang/String;

    if-eqz v3, :cond_187

    :try_start_ac
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_b4

    goto/16 :goto_187

    .line 173
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

    .line 174
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 175
    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    const-string v7, "offerToken"

    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getOfferToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    const-string v7, "currency"

    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    const-string v7, "priceMicros"

    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceAmountMicros()J

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 181
    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getFullPriceMicros()Ljava/lang/Long;

    move-result-object v7

    if-eqz v7, :cond_fa

    .line 182
    const-string v7, "fullPriceMicros"

    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getFullPriceMicros()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    :cond_fa
    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getDiscountDisplayInfo()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$DiscountDisplayInfo;

    move-result-object v7

    if-eqz v7, :cond_120

    .line 188
    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getDiscountDisplayInfo()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$DiscountDisplayInfo;

    move-result-object v7

    .line 189
    const-string v8, "percentDiscount"

    invoke-virtual {v7}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$DiscountDisplayInfo;->getPercentageDiscount()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    invoke-virtual {v7}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$DiscountDisplayInfo;->getDiscountAmount()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$DiscountDisplayInfo$DiscountAmount;

    move-result-object v8

    if-eqz v8, :cond_120

    .line 191
    const-string v8, "discountAmountMicros"

    .line 192
    invoke-virtual {v7}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$DiscountDisplayInfo;->getDiscountAmount()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$DiscountDisplayInfo$DiscountAmount;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$DiscountDisplayInfo$DiscountAmount;->getDiscountAmountMicros()J

    move-result-wide v9

    .line 191
    invoke-virtual {v6, v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 195
    :cond_120
    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getRentalDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$RentalDetails;

    move-result-object v7

    if-eqz v7, :cond_14a

    .line 196
    const-string v7, "rentalPeriod"

    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getRentalDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$RentalDetails;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$RentalDetails;->getRentalPeriod()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 197
    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getRentalDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$RentalDetails;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$RentalDetails;->getRentalExpirationPeriod()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_14a

    .line 198
    const-string v7, "rentalExpirationPeriod"

    .line 199
    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getRentalDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$RentalDetails;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$RentalDetails;->getRentalExpirationPeriod()Ljava/lang/String;

    move-result-object v8

    .line 198
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    :cond_14a
    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getValidTimeWindow()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$ValidTimeWindow;

    move-result-object v7

    if-eqz v7, :cond_16e

    .line 206
    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getValidTimeWindow()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$ValidTimeWindow;

    move-result-object v5

    .line 207
    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$ValidTimeWindow;->getStartTimeMillis()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 208
    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$ValidTimeWindow;->getEndTimeMillis()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 209
    const-string v5, "startTimeMillis"

    invoke-virtual {v6, v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 210
    const-string v5, "endTimeMillis"

    invoke-virtual {v6, v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 213
    :cond_16e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  找到优惠: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-virtual {p3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_b8

    .line 163
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

    .line 166
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 167
    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    const-string v1, "hasOffers"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 169
    invoke-virtual {p3, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_63

    .line 218
    :cond_1bc
    const-string p2, "查询返回的商品列表为空，可能原因：1)商品ID不存在 2)商品未在Google Play Console中配置"

    invoke-static {v2, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
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

    .line 222
    invoke-virtual {p3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/youka/iapplugin/OneTimeOfferBridge;->sendUnity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e0
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_1e0} :catch_1e1

    goto :goto_1f1

    :catch_1e1
    move-exception p2

    .line 224
    const-string p3, "parse error"

    invoke-static {v2, p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
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

    .line 366
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 367
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v1

    .line 368
    invoke-virtual {v1, p1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductId(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v1

    const-string v2, "inapp"

    .line 369
    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v1

    .line 370
    invoke-virtual {v1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    move-result-object v1

    .line 367
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object v1

    .line 373
    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->setProductList(Ljava/util/List;)Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object v0

    .line 374
    invoke-virtual {v0}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams;

    move-result-object v0

    .line 376
    sget-object v1, Lcom/youka/iapplugin/OneTimeOfferBridge;->billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v2, Lcom/youka/iapplugin/OneTimeOfferBridge$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1, p2, p0}, Lcom/youka/iapplugin/OneTimeOfferBridge$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/billingclient/api/BillingClient;->queryProductDetailsAsync(Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_31

    goto :goto_4b

    :catch_31
    move-exception p0

    .line 438
    const-string p1, "OneTimeOfferBridge"

    const-string p2, "launchPurchaseFlow error"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 439
    sget-object p0, Lcom/youka/iapplugin/OneTimeOfferBridge;->currentPurchaseUnityObject:Ljava/lang/String;

    sget-object p1, Lcom/youka/iapplugin/OneTimeOfferBridge;->currentPurchaseUnityMethod:Ljava/lang/String;

    const-string p2, "exception"

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/youka/iapplugin/OneTimeOfferBridge;->errorJson(Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/youka/iapplugin/OneTimeOfferBridge;->sendUnity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    sput-object v0, Lcom/youka/iapplugin/OneTimeOfferBridge;->currentPurchaseUnityObject:Ljava/lang/String;

    .line 441
    sput-object v0, Lcom/youka/iapplugin/OneTimeOfferBridge;->currentPurchaseUnityMethod:Ljava/lang/String;

    :goto_4b
    return-void
.end method

.method private static query(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 10

    const/4 p0, 0x0

    .line 125
    :try_start_1
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    array-length v1, p1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_36

    aget-object v3, p1, v2

    .line 128
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 129
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1d

    goto :goto_33

    .line 130
    :cond_1d
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v4

    .line 131
    invoke-virtual {v4, v3}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductId(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v4, Lcom/google/android/datatransport/runtime/backends/oKH/lWcvVmRwzmOI;->HVqTrITj:Ljava/lang/String;

    .line 132
    invoke-virtual {v3, v4}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v3

    .line 133
    invoke-virtual {v3}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    move-result-object v3

    .line 130
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 135
    :cond_36
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_46

    .line 136
    const-string p1, "no_ids"

    invoke-static {p1, p0}, Lcom/youka/iapplugin/OneTimeOfferBridge;->errorJson(Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lcom/youka/iapplugin/OneTimeOfferBridge;->sendUnity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 140
    :cond_46
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object p1

    .line 141
    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->setProductList(Ljava/util/List;)Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object p1

    .line 142
    invoke-virtual {p1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams;

    move-result-object p1

    .line 144
    sget-object v0, Lcom/youka/iapplugin/OneTimeOfferBridge;->billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v1, Lcom/youka/iapplugin/OneTimeOfferBridge$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, p3, p4}, Lcom/youka/iapplugin/OneTimeOfferBridge$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, p1, v1}, Lcom/android/billingclient/api/BillingClient;->queryProductDetailsAsync(Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5c} :catch_5d

    goto :goto_6e

    :catch_5d
    move-exception p1

    .line 229
    const-string p4, "OneTimeOfferBridge"

    const-string v0, "query error"

    invoke-static {p4, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    const-string p1, "exception"

    invoke-static {p1, p0}, Lcom/youka/iapplugin/OneTimeOfferBridge;->errorJson(Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p3, p0}, Lcom/youka/iapplugin/OneTimeOfferBridge;->sendUnity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_6e
    return-void
.end method

.method private static sendUnity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 235
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

    .line 237
    const-string p2, ""

    :cond_2b
    invoke-static {p0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e
    return-void
.end method
