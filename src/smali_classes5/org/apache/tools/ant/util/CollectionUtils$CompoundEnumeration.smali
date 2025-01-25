.class final Lorg/apache/tools/ant/util/CollectionUtils$CompoundEnumeration;
.super Ljava/lang/Object;
.source "CollectionUtils.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/util/CollectionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CompoundEnumeration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final e1:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final e2:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Enumeration;Ljava/util/Enumeration;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Enumeration",
            "<TE;>;",
            "Ljava/util/Enumeration",
            "<TE;>;)V"
        }
    .end annotation

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-object p1, p0, Lorg/apache/tools/ant/util/CollectionUtils$CompoundEnumeration;->e1:Ljava/util/Enumeration;

    .line 228
    iput-object p2, p0, Lorg/apache/tools/ant/util/CollectionUtils$CompoundEnumeration;->e2:Ljava/util/Enumeration;

    .line 229
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 2

    .line 233
    iget-object v0, p0, Lorg/apache/tools/ant/util/CollectionUtils$CompoundEnumeration;->e1:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/apache/tools/ant/util/CollectionUtils$CompoundEnumeration;->e2:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public nextElement()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lorg/apache/tools/ant/util/CollectionUtils$CompoundEnumeration;->e1:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 239
    iget-object v0, p0, Lorg/apache/tools/ant/util/CollectionUtils$CompoundEnumeration;->e1:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    .line 241
    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lorg/apache/tools/ant/util/CollectionUtils$CompoundEnumeration;->e2:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    goto :goto_e
.end method
