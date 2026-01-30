.class public Lcom/google/firebase/remoteconfig/internal/DefaultsXmlParser;
.super Ljava/lang/Object;
.source "DefaultsXmlParser.java"


# static fields
.field private static final XML_TAG_ENTRY:Ljava/lang/String; = "entry"

.field private static final XML_TAG_KEY:Ljava/lang/String; = "key"

.field private static final XML_TAG_VALUE:Ljava/lang/String; = "value"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultsFromXml(Landroid/content/Context;I)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "FirebaseRemoteConfig"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-nez p0, :cond_13

    const-string p0, "Could not find the resources of the current context while trying to set defaults from an XML."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_13
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result p1

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    :goto_1f
    const/4 v6, 0x1

    if-eq p1, v6, :cond_94

    const/4 v7, 0x2

    if-ne p1, v7, :cond_2b

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_87

    :cond_2b
    const/4 v7, 0x3

    if-ne p1, v7, :cond_4b

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v3, "entry"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_49

    if-eqz v4, :cond_42

    if-eqz v5, :cond_42

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_47

    :cond_42
    const-string p1, "An entry in the defaults XML has an invalid key and/or value tag."

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_47
    move-object v4, v2

    move-object v5, v4

    :cond_49
    move-object v3, v2

    goto :goto_87

    :cond_4b
    const/4 v7, 0x4

    if-ne p1, v7, :cond_87

    if-eqz v3, :cond_87

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result p1

    const v7, 0x19e5f

    if-eq p1, v7, :cond_69

    const v7, 0x6ac9171

    if-eq p1, v7, :cond_5f

    goto :goto_73

    :cond_5f
    const-string p1, "value"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_73

    move p1, v6

    goto :goto_74

    :cond_69
    const-string p1, "key"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_73

    const/4 p1, 0x0

    goto :goto_74

    :cond_73
    :goto_73
    const/4 p1, -0x1

    :goto_74
    if-eqz p1, :cond_83

    if-eq p1, v6, :cond_7e

    const-string p1, "Encountered an unexpected tag while parsing the defaults XML."

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_87

    :cond_7e
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v5

    goto :goto_87

    :cond_83
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v4

    :cond_87
    :goto_87
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result p1
    :try_end_8b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_8b} :catch_8e
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_8b} :catch_8c

    goto :goto_1f

    :catch_8c
    move-exception p0

    goto :goto_8f

    :catch_8e
    move-exception p0

    :goto_8f
    const-string p1, "Encountered an error while parsing the defaults XML file."

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_94
    return-object v1
.end method
