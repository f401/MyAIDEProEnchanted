.class public Lcom/sun/tools/javac/code/Type$UndetVar;
.super Lcom/sun/tools/javac/code/Type$DelegatedType;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UndetVar"
.end annotation


# instance fields
.field public hibounds:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation
.end field

.field public inst:Lcom/sun/tools/javac/code/Type;

.field public lobounds:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sun/tools/javac/code/Type;)V
    .registers 3

    .line 1273
    const/16 v0, 0x15

    invoke-direct {p0, v0, p1}, Lcom/sun/tools/javac/code/Type$DelegatedType;-><init>(ILcom/sun/tools/javac/code/Type;)V

    .line 1263
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Type$UndetVar;->lobounds:Lcom/sun/tools/javac/util/List;

    .line 1264
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Type$UndetVar;->hibounds:Lcom/sun/tools/javac/util/List;

    .line 1265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Type$UndetVar;->inst:Lcom/sun/tools/javac/code/Type;

    .line 1274
    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/tools/javac/code/Type$Visitor;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/tools/javac/code/Type$Visitor",
            "<TR;TS;>;TS;)TR;"
        }
    .end annotation

    .line 1269
    invoke-interface {p1, p0, p2}, Lcom/sun/tools/javac/code/Type$Visitor;->visitUndetVar(Lcom/sun/tools/javac/code/Type$UndetVar;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public baseType()Lcom/sun/tools/javac/code/Type;
    .registers 2

    .line 1282
    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$UndetVar;->inst:Lcom/sun/tools/javac/code/Type;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->baseType()Lcom/sun/tools/javac/code/Type;

    move-result-object p0

    .line 1283
    :cond_8
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1277
    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$UndetVar;->inst:Lcom/sun/tools/javac/code/Type;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1278
    :goto_8
    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sun/tools/javac/code/Type$UndetVar;->qtype:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method
