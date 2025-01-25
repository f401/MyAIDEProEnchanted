.class final enum Lorg/apache/tools/ant/types/Quantifier$Predicate$5;
.super Lorg/apache/tools/ant/types/Quantifier$Predicate;
.source "Quantifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/types/Quantifier$Predicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method varargs constructor <init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V
    .registers 11

    .line 94
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/tools/ant/types/Quantifier$Predicate;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Lorg/apache/tools/ant/types/Quantifier$1;)V

    return-void
.end method


# virtual methods
.method eval(II)Z
    .registers 4

    .line 97
    if-nez p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method
