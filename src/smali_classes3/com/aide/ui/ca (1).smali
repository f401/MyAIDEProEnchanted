.class public Lcom/aide/ui/ca;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/ca;

    const-wide v1, 0xa41c6305c078778L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x2f38e83dbf5992a0L  # -1.369069804802504E81

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/ca;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/ca;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public static j6(Ljava/lang/String;)I
    .registers 7

    const/4 v0, 0x0

    const-wide v1, -0x352ce2caa8c6f3c0L  # -2.860572813242145E52

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/ca;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const-string v3, "."

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_26

    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3
    :try_end_25
    .catchall {:try_start_6 .. :try_end_25} :catchall_ad

    goto :goto_28

    :cond_26
    const-string v3, ""

    :goto_28
    :try_start_28
    const-string v4, "java"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    const p0, 0x7f070044

    return p0

    :cond_34
    const-string v4, "xml"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    const p0, 0x7f070048

    return p0

    :cond_40
    const-string v4, "cpp"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    const p0, 0x7f070040

    return p0

    :cond_4c
    const-string v4, "c"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_58

    const p0, 0x7f07003f

    return p0

    :cond_58
    const-string v4, "css"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_64

    const p0, 0x7f070041

    return p0

    :cond_64
    const-string v4, "h"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const v5, 0x7f070042

    if-eqz v4, :cond_70

    return v5

    :cond_70
    const-string v4, "hpp"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_79

    return v5

    :cond_79
    const-string v4, "html"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_85

    const p0, 0x7f070043

    return p0

    :cond_85
    const-string v4, "js"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_91

    const p0, 0x7f070045

    return p0

    :cond_91
    const-string v4, "txt"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9d

    const p0, 0x7f070046

    return p0

    :cond_9d
    const-string v4, "gradle"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_a3
    .catchall {:try_start_28 .. :try_end_a3} :catchall_ad

    if-eqz p0, :cond_a9

    const p0, 0x7f0700fc

    return p0

    :cond_a9
    const p0, 0x7f070047

    return p0

    :catchall_ad
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/ca;->DW:Z

    if-eqz v4, :cond_b5

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_b5
    throw v3
.end method
