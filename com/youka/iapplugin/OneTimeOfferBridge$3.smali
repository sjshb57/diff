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

    .line 242
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

    .line 245
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

    .line 247
    invoke-static {}, Lcom/youka/iapplugin/OneTimeOfferBridge;->-$$Nest$sfgetcurrentPurchaseUnityObject()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_122

    invoke-static {}, Lcom/youka/iapplugin/OneTimeOfferBridge;->-$$Nest$sfgetcurrentPurchaseUnityMethod()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_31

    goto/16 :goto_122

    :cond_31
    const/4 v0, 0x0

    .line 253
    :try_start_32
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 254
    const-string v3, "responseCode"

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 255
    const-string v3, "debugMessage"

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 257
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v3
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_4d} :catch_104

    const/4 v4, 0x0

    sget-object v4, Lcom/brotato/shooting/survivors/games/paid/android/ZVh/EBDotepEFW;->lJBRytcS:Ljava/lang/String;

    if-nez v3, :cond_e3

    if-eqz p2, :cond_e3

    .line 258
    :try_start_54
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 259
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/billingclient/api/Purchase;

    .line 260
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 261
    const-string v7, "orderId"

    invoke-virtual {v5}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 262
    const-string v7, "packageName"

    invoke-virtual {v5}, Lcom/android/billingclient/api/Purchase;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    const-string v7, "purchaseTime"

    invoke-virtual {v5}, Lcom/android/billingclient/api/Purchase;->getPurchaseTime()J

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 264
    const-string v7, "purchaseState"

    invoke-virtual {v5}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 265
    const-string v7, "purchaseToken"

    invoke-virtual {v5}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    const-string v7, "signature"

    invoke-virtual {v5}, Lcom/android/billingclient/api/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    const-string v7, "originalJson"

    invoke-virtual {v5}, Lcom/android/billingclient/api/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 270
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 271
    invoke-virtual {v5}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_d0

    .line 272
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

    .line 273
    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_c0

    .line 276
    :cond_d0
    const-string v5, "productIds"

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 278
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_5d

    .line 280
    :cond_d9
    const-string p2, "purchases"

    invoke-virtual {v2, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p2, 0x1

    .line 281
    invoke-virtual {v2, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_ee

    :cond_e3
    const/4 p2, 0x0

    .line 283
    invoke-virtual {v2, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 284
    const-string p2, "error"

    const-string v3, "purchase_failed"

    invoke-virtual {v2, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 287
    :goto_ee
    invoke-static {}, Lcom/youka/iapplugin/OneTimeOfferBridge;->-$$Nest$sfgetcurrentPurchaseUnityObject()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/youka/iapplugin/OneTimeOfferBridge;->-$$Nest$sfgetcurrentPurchaseUnityMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v3, v2}, Lcom/youka/iapplugin/OneTimeOfferBridge;->-$$Nest$smsendUnity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-static {v0}, Lcom/youka/iapplugin/OneTimeOfferBridge;->-$$Nest$sfputcurrentPurchaseUnityObject(Ljava/lang/String;)V

    .line 291
    invoke-static {v0}, Lcom/youka/iapplugin/OneTimeOfferBridge;->-$$Nest$sfputcurrentPurchaseUnityMethod(Ljava/lang/String;)V
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_103} :catch_104

    goto :goto_121

    :catch_104
    move-exception p2

    .line 293
    const-string v2, "onPurchasesUpdated parse error"

    invoke-static {v1, v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 294
    invoke-static {}, Lcom/youka/iapplugin/OneTimeOfferBridge;->-$$Nest$sfgetcurrentPurchaseUnityObject()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/youka/iapplugin/OneTimeOfferBridge;->-$$Nest$sfgetcurrentPurchaseUnityMethod()Ljava/lang/String;

    move-result-object v1

    const-string v2, "parse_error"

    invoke-static {v2, p1}, Lcom/youka/iapplugin/OneTimeOfferBridge;->-$$Nest$smerrorJson(Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v1, p1}, Lcom/youka/iapplugin/OneTimeOfferBridge;->-$$Nest$smsendUnity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-static {v0}, Lcom/youka/iapplugin/OneTimeOfferBridge;->-$$Nest$sfputcurrentPurchaseUnityObject(Ljava/lang/String;)V

    .line 296
    invoke-static {v0}, Lcom/youka/iapplugin/OneTimeOfferBridge;->-$$Nest$sfputcurrentPurchaseUnityMethod(Ljava/lang/String;)V

    :goto_121
    return-void

    .line 248
    :cond_122
    :goto_122
    const-string p1, "onPurchasesUpdated: No Unity callback registered"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
