.class public final Lcom/onevcat/uniwebview/UniWebViewAuthenticationActivity;
.super Lcom/onevcat/uniwebview/UniWebViewProxyActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onevcat/uniwebview/UniWebViewAuthenticationActivity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u00042\u00020\u0001:\u0001\u0005B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0006"
    }
    d2 = {
        "Lcom/onevcat/uniwebview/UniWebViewAuthenticationActivity;",
        "Lcom/onevcat/uniwebview/UniWebViewProxyActivity;",
        "<init>",
        "()V",
        "Companion",
        "a",
        "uniwebview_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onevcat/uniwebview/UniWebViewAuthenticationActivity$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewAuthenticationActivity$a;

    invoke-direct {v0}, Lcom/onevcat/uniwebview/UniWebViewAuthenticationActivity$a;-><init>()V

    sput-object v0, Lcom/onevcat/uniwebview/UniWebViewAuthenticationActivity;->Companion:Lcom/onevcat/uniwebview/UniWebViewAuthenticationActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/onevcat/uniwebview/UniWebViewProxyActivity;-><init>()V

    return-void
.end method
