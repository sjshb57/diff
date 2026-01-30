.class Lcom/youka/iapplugin/OneTimeOfferBridge$3;
.super Ljava/lang/Object;
.source "OneTimeOfferBridge.java"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youka/iapplugin/OneTimeOfferBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPurchasesUpdated: "

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

    invoke-static {}, Lcom/youka/iapplugin/OneTimeOfferBridge;->-$$Nest$sfgetcurrentPurchaseUnityObject()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_122

    invoke-static {}, Lcom/youka/iapplugin/OneTimeOfferBridge;->-$$Nest$sfgetcurrentPurchaseUnityMethod()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_31

    goto/16 :goto_122

    :cond_31
    const/4 v0, 0x0

    :try_start_32
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "responseCode"

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "debugMessage"

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v3
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_4d} :catch_104

    const/4 v4, 0x0

    sget-object v4, Lcom/brotato/shooting/survivors/games/paid/android/ZVh/EBDotepEFW;->lJBRytcS:Ljava/lang/String;

    if-nez v3, :cond_e3

    if-eqz p2, :cond_e3

    :try_start_54
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/billingclient/api/Purchase;

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "orderId"

    invoke-virtual {v5}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "packageName"

    invoke-virtual {v5}, Lcom/android/billingclient/api/Purchase;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "purchaseTime"

    invoke-virtual {v5}, Lcom/android/billingclient/api/Purchase;->getPurchaseTime()J

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v7, "purchaseState"

    invoke-virtual {v5}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "purchaseToken"

    invoke-virtual {v5}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "signature"

    invoke-virtual {v5}, Lcom/android/billingclient/api/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "originalJson"

    invoke-virtual {v5}, Lcom/android/billingclient/api/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v5}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_d0

    invoke-virtual {v5}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_c0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_c0

    :cond_d0
    const-string v5, "productIds"

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_5d

    :cond_d9
    const-string p2, "purchases"

    invoke-virtual {v2, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p2, 0x1

    invoke-virtual {v2, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_ee

    :cond_e3
    const/4 p2, 0x0

    invoke-virtual {v2, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p2, "error"

    const-string v3, "purchase_failed"

    invoke-virtual {v2, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_ee
    invoke-static {}, Lcom/youka/iapplugin/OneTimeOfferBridge;->-$$Nest$sfgetcurrentPurchaseUnityObject()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/youka/iapplugin/OneTimeOfferBridge;->-$$Nest$sfgetcurrentPurchaseUnityMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v3, v2}, Lcom/youka/iapplugin/OneTimeOfferBridge;->-$$Nest$smsendUnity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/youka/iapplugin/OneTimeOfferBridge;->-$$Nest$sfputcurrentPurchaseUnityObject(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/youka/iapplugin/OneTimeOfferBridge;->-$$Nest$sfputcurrentPurchaseUnityMethod(Ljava/lang/String;)V
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_103} :catch_104

    goto :goto_121

    :catch_104
    move-exception p2

    const-string v2, "onPurchasesUpdated parse error"

    invoke-static {v1, v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Lcom/youka/iapplugin/OneTimeOfferBridge;->-$$Nest$sfgetcurrentPurchaseUnityObject()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/youka/iapplugin/OneTimeOfferBridge;->-$$Nest$sfgetcurrentPurchaseUnityMethod()Ljava/lang/String;

    move-result-object v1

    const-string v2, "parse_error"

    invoke-static {v2, p1}, Lcom/youka/iapplugin/OneTimeOfferBridge;->-$$Nest$smerrorJson(Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v1, p1}, Lcom/youka/iapplugin/OneTimeOfferBridge;->-$$Nest$smsendUnity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/youka/iapplugin/OneTimeOfferBridge;->-$$Nest$sfputcurrentPurchaseUnityObject(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/youka/iapplugin/OneTimeOfferBridge;->-$$Nest$sfputcurrentPurchaseUnityMethod(Ljava/lang/String;)V

    :goto_121
    return-void

    :cond_122
    :goto_122
    const-string p1, "onPurchasesUpdated: No Unity callback registered"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
