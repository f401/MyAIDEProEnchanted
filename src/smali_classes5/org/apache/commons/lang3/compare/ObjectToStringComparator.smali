.class public final Lorg/apache/commons/lang3/compare/ObjectToStringComparator;
.super Ljava/lang/Object;
.source "ObjectToStringComparator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/commons/lang3/compare/ObjectToStringComparator;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    new-instance v0, Lorg/apache/commons/lang3/compare/ObjectToStringComparator;

    invoke-direct {v0}, Lorg/apache/commons/lang3/compare/ObjectToStringComparator;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/compare/ObjectToStringComparator;->INSTANCE:Lorg/apache/commons/lang3/compare/ObjectToStringComparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 46
    if-nez p1, :cond_8

    if-nez p2, :cond_8

    .line 67
    :cond_7
    :goto_7
    return v0

    .line 49
    :cond_8
    if-nez p1, :cond_c

    move v0, v1

    .line 50
    goto :goto_7

    .line 52
    :cond_c
    if-nez p2, :cond_10

    move v0, v2

    .line 53
    goto :goto_7

    .line 55
    :cond_10
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 56
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 58
    if-nez v3, :cond_1c

    if-eqz v4, :cond_7

    .line 61
    :cond_1c
    if-nez v3, :cond_20

    move v0, v1

    .line 62
    goto :goto_7

    .line 64
    :cond_20
    if-nez v4, :cond_24

    move v0, v2

    .line 65
    goto :goto_7

    .line 67
    :cond_24
    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_7
.end method
