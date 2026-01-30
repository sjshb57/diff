.class Lcom/google/licensingservicehelper/LicensingServiceHelper$2;
.super Lcom/android/vending/licensing/ILicenseV2ResultListener$Stub;
.source "LicensingServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/licensingservicehelper/LicensingServiceHelper;->callLicensingService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/licensingservicehelper/LicensingServiceHelper;


# direct methods
.method constructor <init>(Lcom/google/licensingservicehelper/LicensingServiceHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/google/licensingservicehelper/LicensingServiceHelper$2;->this$0:Lcom/google/licensingservicehelper/LicensingServiceHelper;

    invoke-direct {p0}, Lcom/android/vending/licensing/ILicenseV2ResultListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public verifyLicense(ILandroid/os/Bundle;)V
    .registers 5

    .prologue
    iget-object v0, p0, Lcom/google/licensingservicehelper/LicensingServiceHelper$2;->this$0:Lcom/google/licensingservicehelper/LicensingServiceHelper;

    invoke-static {v0}, Lcom/google/licensingservicehelper/LicensingServiceHelper;->access$400(Lcom/google/licensingservicehelper/LicensingServiceHelper;)Lcom/google/licensingservicehelper/LicensingServiceCallback;

    move-result-object v0

    const-string v1, "{\"licstat\":\"LICENSED\"}"

    invoke-interface {v0, v1}, Lcom/google/licensingservicehelper/LicensingServiceCallback;->allow(Ljava/lang/String;)V

    return-void
.end method
