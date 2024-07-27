.class public abstract Lcom/aide/ui/views/editor/ra;
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
    .registers 4

    const-wide v2, 0x353edbe5588e7280L

    const-class v0, Lcom/aide/ui/views/editor/ra;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, -0xd3a4d3108a436c0L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/ra;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xd3a4d3108a436c0L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/ra;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static j6(Ljava/io/Reader;Lcom/aide/ui/views/editor/ra$a;[C)[C
    .registers 13

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/ra;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xa77acf624e58c6cL

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v4, p2

    sub-int/2addr v4, v0

    invoke-virtual {p0, p2, v0, v4}, Ljava/io/Reader;->read([CII)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    const/4 v4, -0x1

    if-eq v9, v4, :cond_c

    const/4 v4, 0x0

    move v8, v0

    :goto_1
    add-int v5, v0, v9

    if-ge v8, v5, :cond_8

    aget-char v5, p2, v8

    const/16 v6, 0xa

    if-eq v5, v6, :cond_5

    const/16 v6, 0xd

    if-eq v5, v6, :cond_2

    if-eqz v3, :cond_e

    if-nez v2, :cond_e

    :try_start_1
    const-string v2, "\r"

    invoke-interface {p1, v2}, Lcom/aide/ui/views/editor/ra$a;->j6(Ljava/lang/String;)V

    const/4 v2, 0x1

    move v3, v4

    :cond_1
    :goto_2
    const/4 v4, 0x0

    move v5, v4

    move v6, v3

    move v7, v2

    :goto_3
    add-int/lit8 v8, v8, 0x1

    move v3, v5

    move v4, v6

    move v2, v7

    goto :goto_1

    :cond_2
    sub-int v3, v8, v4

    invoke-interface {p1, v1, p2, v4, v3}, Lcom/aide/ui/views/editor/ra$a;->j6(I[CII)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    :goto_4
    return-object p2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v8, 0x1

    const/4 v3, 0x1

    move v5, v3

    move v6, v4

    move v7, v2

    goto :goto_3

    :cond_5
    if-eqz v3, :cond_6

    add-int/lit8 v3, v4, 0x1

    if-nez v2, :cond_1

    const-string v2, "\r\n"

    invoke-interface {p1, v2}, Lcom/aide/ui/views/editor/ra$a;->j6(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v4, 0x1

    move v5, v2

    move v6, v3

    move v7, v4

    goto :goto_3

    :cond_6
    if-nez v2, :cond_7

    const-string v2, "\n"

    invoke-interface {p1, v2}, Lcom/aide/ui/views/editor/ra$a;->j6(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_7
    sub-int v5, v8, v4

    invoke-interface {p1, v1, p2, v4, v5}, Lcom/aide/ui/views/editor/ra$a;->j6(I[CII)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v8, 0x1

    move v5, v3

    move v6, v4

    move v7, v2

    goto :goto_3

    :cond_8
    if-nez v4, :cond_9

    array-length v0, p2

    if-ne v5, v0, :cond_d

    array-length v0, p2

    mul-int/lit8 v0, v0, 0x2

    new-array v4, v0, [C

    const/4 v0, 0x0

    const/4 v5, 0x0

    array-length v6, p2

    invoke-static {p2, v0, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, p2

    move-object p2, v4

    goto :goto_0

    :cond_9
    if-ge v4, v5, :cond_b

    sub-int v0, v5, v4

    const/4 v5, 0x0

    invoke-static {p2, v4, p2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    move-object v7, p2

    sget-boolean v0, Lcom/aide/ui/views/editor/ra;->DW:Z

    if-eqz v0, :cond_a

    const-wide v2, -0xa77acf624e58c6cL

    const/4 v4, 0x0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a
    throw v1

    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_c
    if-eqz v0, :cond_3

    const/4 v2, 0x0

    :try_start_2
    invoke-interface {p1, v1, p2, v2, v0}, Lcom/aide/ui/views/editor/ra$a;->DW(I[CII)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :cond_d
    move v0, v5

    goto/16 :goto_0

    :cond_e
    move v3, v4

    goto/16 :goto_2
.end method
