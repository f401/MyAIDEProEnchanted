.class public Lcom/sun/tools/javac/api/Formattable$LocalizedString;
.super Ljava/lang/Object;
.source "Formattable.java"

# interfaces
.implements Lcom/sun/tools/javac/api/Formattable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/api/Formattable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalizedString"
.end annotation


# instance fields
.field key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/sun/tools/javac/api/Formattable$LocalizedString;->key:Ljava/lang/String;

    .line 63
    return-void
.end method


# virtual methods
.method public getKind()Ljava/lang/String;
    .registers 2

    .line 69
    const-string v0, "LocalizedString"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/sun/tools/javac/api/Formattable$LocalizedString;->key:Ljava/lang/String;

    return-object v0
.end method

.method public toString(Ljava/util/Locale;Lcom/sun/tools/javac/api/Messages;)Ljava/lang/String;
    .registers 5

    .line 66
    iget-object v0, p0, Lcom/sun/tools/javac/api/Formattable$LocalizedString;->key:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p2, p1, v0, v1}, Lcom/sun/tools/javac/api/Messages;->getLocalizedString(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
