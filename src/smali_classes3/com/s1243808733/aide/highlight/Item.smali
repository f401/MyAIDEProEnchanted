.class public Lcom/s1243808733/aide/highlight/Item;
.super Ljava/lang/Object;
.source "Item.java"


# instance fields
.field private defaultColor:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/s1243808733/aide/highlight/Item;->title:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/s1243808733/aide/highlight/Item;->type:Ljava/lang/String;

    .line 14
    iput-object p3, p0, Lcom/s1243808733/aide/highlight/Item;->defaultColor:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getColor(Z)Ljava/lang/String;
    .registers 5

    .line 26
    invoke-static {}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getHSp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/s1243808733/aide/highlight/Item;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getSpKey(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/s1243808733/aide/highlight/Item;->getDefaultColor()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultColor()Ljava/lang/String;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/s1243808733/aide/highlight/Item;->defaultColor:Ljava/lang/String;

    return-object v0
.end method

.method public getSpKey(Z)Ljava/lang/String;
    .registers 3

    .line 47
    invoke-virtual {p0}, Lcom/s1243808733/aide/highlight/Item;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getSpKey(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/s1243808733/aide/highlight/Item;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/s1243808733/aide/highlight/Item;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setDefaultColor(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/s1243808733/aide/highlight/Item;->defaultColor:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lcom/s1243808733/aide/highlight/Item;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 18
    iput-object p1, p0, Lcom/s1243808733/aide/highlight/Item;->type:Ljava/lang/String;

    return-void
.end method
