.class public Lorg/apache/tools/ant/util/IdentityMapper;
.super Ljava/lang/Object;
.source "IdentityMapper.java"

# interfaces
.implements Lorg/apache/tools/ant/util/FileNameMapper;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mapFileName(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    .line 53
    if-nez p1, :cond_4

    .line 59
    const/4 v0, 0x0

    .line 61
    :goto_3
    return-object v0

    :cond_4
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    goto :goto_3
.end method

.method public setFrom(Ljava/lang/String;)V
    .registers 2

    .line 36
    return-void
.end method

.method public setTo(Ljava/lang/String;)V
    .registers 2

    .line 44
    return-void
.end method
