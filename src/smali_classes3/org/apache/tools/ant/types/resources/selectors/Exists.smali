.class public Lorg/apache/tools/ant/types/resources/selectors/Exists;
.super Ljava/lang/Object;
.source "Exists.java"

# interfaces
.implements Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSelected(Lorg/apache/tools/ant/types/Resource;)Z
    .registers 3

    .line 34
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v0

    return v0
.end method
