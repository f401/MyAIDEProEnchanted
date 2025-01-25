.class public Lorg/apache/tools/ant/types/FilterSet$Filter;
.super Ljava/lang/Object;
.source "FilterSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/types/FilterSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Filter"
.end annotation


# instance fields
.field token:Ljava/lang/String;

.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/FilterSet$Filter;->setToken(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/types/FilterSet$Filter;->setValue(Ljava/lang/String;)V

    .line 63
    return-void
.end method


# virtual methods
.method public getToken()Ljava/lang/String;
    .registers 2

    .line 95
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterSet$Filter;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 104
    iget-object v0, p0, Lorg/apache/tools/ant/types/FilterSet$Filter;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setToken(Ljava/lang/String;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lorg/apache/tools/ant/types/FilterSet$Filter;->token:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2

    .line 86
    iput-object p1, p0, Lorg/apache/tools/ant/types/FilterSet$Filter;->value:Ljava/lang/String;

    .line 87
    return-void
.end method
