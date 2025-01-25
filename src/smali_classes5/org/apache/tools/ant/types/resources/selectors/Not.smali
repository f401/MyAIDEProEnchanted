.class public Lorg/apache/tools/ant/types/resources/selectors/Not;
.super Ljava/lang/Object;
.source "Not.java"

# interfaces
.implements Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;


# instance fields
.field private sel:Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;)V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/selectors/Not;->add(Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;)V

    .line 42
    return-void
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;)V
    .registers 4

    .line 50
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Not;->sel:Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;

    if-nez v0, :cond_7

    .line 54
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/selectors/Not;->sel:Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;

    .line 55
    return-void

    .line 51
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The Not ResourceSelector accepts a single nested ResourceSelector"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isSelected(Lorg/apache/tools/ant/types/Resource;)Z
    .registers 3

    .line 63
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Not;->sel:Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;

    invoke-interface {v0, p1}, Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;->isSelected(Lorg/apache/tools/ant/types/Resource;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
