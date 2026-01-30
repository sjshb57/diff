.class public Lcom/google/licensingservicehelper/LicensingServiceHelper;
.super Ljava/lang/Object;
.source "LicensingServiceHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LicensingServiceHelper"


# instance fields
.field private callback:Lcom/google/licensingservicehelper/LicensingServiceCallback;

.field private final context:Landroid/content/Context;

.field private licensingService:Lcom/android/vending/licensing/ILicensingService;

.field private final publicKey:Ljava/lang/String;

.field private serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/licensingservicehelper/LicensingServiceHelper$1;

    invoke-direct {v0, p0}, Lcom/google/licensingservicehelper/LicensingServiceHelper$1;-><init>(Lcom/google/licensingservicehelper/LicensingServiceHelper;)V

    iput-object v0, p0, Lcom/google/licensingservicehelper/LicensingServiceHelper;->serviceConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/google/licensingservicehelper/LicensingServiceHelper;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/licensingservicehelper/LicensingServiceHelper;->publicKey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/google/licensingservicehelper/LicensingServiceHelper;Lcom/android/vending/licensing/ILicensingService;)Lcom/android/vending/licensing/ILicensingService;
    .registers 2

    iput-object p1, p0, Lcom/google/licensingservicehelper/LicensingServiceHelper;->licensingService:Lcom/android/vending/licensing/ILicensingService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/licensingservicehelper/LicensingServiceHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/licensingservicehelper/LicensingServiceHelper;->callLicensingService()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/licensingservicehelper/LicensingServiceHelper;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/google/licensingservicehelper/LicensingServiceHelper;->publicKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/licensingservicehelper/LicensingServiceHelper;->parseAndVerify(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/licensingservicehelper/LicensingServiceHelper;)Lcom/google/licensingservicehelper/LicensingServiceCallback;
    .registers 1

    iget-object p0, p0, Lcom/google/licensingservicehelper/LicensingServiceHelper;->callback:Lcom/google/licensingservicehelper/LicensingServiceCallback;

    return-object p0
.end method

.method private callLicensingService()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/google/licensingservicehelper/LicensingServiceHelper;->licensingService:Lcom/android/vending/licensing/ILicensingService;

    iget-object v1, p0, Lcom/google/licensingservicehelper/LicensingServiceHelper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/licensingservicehelper/LicensingServiceHelper$2;

    invoke-direct {v2, p0}, Lcom/google/licensingservicehelper/LicensingServiceHelper$2;-><init>(Lcom/google/licensingservicehelper/LicensingServiceHelper;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v0, v1, v2, v3}, Lcom/android/vending/licensing/ILicensingService;->checkLicenseV2(Ljava/lang/String;Lcom/android/vending/licensing/ILicenseV2ResultListener;Landroid/os/Bundle;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_25

    :catch_16
    move-exception v0

    const-string v1, "LicensingServiceHelper"

    const-string v2, "RemoteException in checkLicenseV2 call."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/google/licensingservicehelper/LicensingServiceHelper;->callback:Lcom/google/licensingservicehelper/LicensingServiceCallback;

    const-string v1, "RemoteException in checkLicenseV2 call"

    invoke-interface {v0, v1}, Lcom/google/licensingservicehelper/LicensingServiceCallback;->applicationError(Ljava/lang/String;)V

    :goto_25
    return-void
.end method

.method private static generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_14
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_14} :catch_24
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_14} :catch_15

    return-object p0

    :catch_15
    move-exception p0

    const-string v0, "LicensingServiceHelper"

    const/4 v1, 0x0

    sget-object v1, Landroidx/privacysandbox/ads/adservices/adselection/oJ/LFBAEOAct;->knVN:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_24
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static parseAndVerify(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/google/api/client/json/jackson2/JacksonFactory;->getDefaultInstance()Lcom/google/api/client/json/jackson2/JacksonFactory;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/json/webtoken/JsonWebSignature;->parser(Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;->parse(Ljava/lang/String;)Lcom/google/api/client/json/webtoken/JsonWebSignature;

    move-result-object p1

    invoke-static {p0}, Lcom/google/licensingservicehelper/LicensingServiceHelper;->generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/api/client/json/webtoken/JsonWebSignature;->verifySignature(Ljava/security/PublicKey;)Z

    move-result p0

    if-eqz p0, :cond_26

    const-string p0, "LicensingServiceHelper"

    const-string v0, "JWS verification succeeded"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/google/api/client/json/webtoken/JsonWebSignature;->getPayload()Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->toPrettyString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "JWS verification failed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public checkLicense(Lcom/google/licensingservicehelper/LicensingServiceCallback;)V
    .registers 5

    iput-object p1, p0, Lcom/google/licensingservicehelper/LicensingServiceHelper;->callback:Lcom/google/licensingservicehelper/LicensingServiceCallback;

    iget-object p1, p0, Lcom/google/licensingservicehelper/LicensingServiceHelper;->licensingService:Lcom/android/vending/licensing/ILicensingService;

    if-nez p1, :cond_33

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/android/vending/licensing/ILicensingService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.android.vending"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/licensingservicehelper/LicensingServiceHelper;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/licensingservicehelper/LicensingServiceHelper;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "service bound with "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LicensingServiceHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    :cond_33
    invoke-direct {p0}, Lcom/google/licensingservicehelper/LicensingServiceHelper;->callLicensingService()V

    :goto_36
    return-void
.end method

.method public onDestroy()V
    .registers 4

    const-string v0, "LicensingServiceHelper"

    :try_start_2
    iget-object v1, p0, Lcom/google/licensingservicehelper/LicensingServiceHelper;->context:Landroid/content/Context;

    if-eqz v1, :cond_11

    iget-object v2, p0, Lcom/google/licensingservicehelper/LicensingServiceHelper;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_b} :catch_c

    goto :goto_11

    :catch_c
    const-string v1, "Unable to unbind from licensing service (already unbound)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_11
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/licensingservicehelper/LicensingServiceHelper;->licensingService:Lcom/android/vending/licensing/ILicensingService;

    const-string v1, "Destroyed LicenseServiceHelper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public showPaywall(Landroid/app/PendingIntent;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/licensingservicehelper/LicensingServiceHelper;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V

    return-void
.end method
