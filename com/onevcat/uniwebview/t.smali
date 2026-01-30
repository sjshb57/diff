.class public final Lcom/onevcat/uniwebview/t;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "La/v;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/onevcat/uniwebview/t;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/onevcat/uniwebview/t;

    invoke-direct {v0}, Lcom/onevcat/uniwebview/t;-><init>()V

    sput-object v0, Lcom/onevcat/uniwebview/t;->a:Lcom/onevcat/uniwebview/t;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, La/v;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, La/v;->m:La/o;

    invoke-virtual {p1}, La/o;->g()V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
