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
    .registers 3

    const-class v0, Lcom/aide/ui/views/editor/ra;

    const-wide v1, 0x353edbe5588e7280L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0xd3a4d3108a436c0L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/views/editor/ra;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/views/editor/ra;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public static j6(Ljava/io/Reader;Lcom/aide/ui/views/editor/ra$a;[C)[C
    .registers 15

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/ra;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, -0xa77acf624e58c6cL

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_15
    array-length v5, p2

    sub-int/2addr v5, v1

    invoke-virtual {p0, p2, v1, v5}, Ljava/io/Reader;->read([CII)I

    move-result v5
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_92

    const/4 v6, -0x1

    if-eq v5, v6, :cond_8c

    move v6, v1

    const/4 v7, 0x0

    :goto_20
    add-int v8, v1, v5

    if-ge v6, v8, :cond_6f

    aget-char v8, p2, v6

    const/16 v9, 0xa

    const/4 v10, 0x1

    if-eq v8, v9, :cond_49

    const/16 v9, 0xd

    if-eq v8, v9, :cond_39

    if-eqz v3, :cond_55

    if-nez v2, :cond_55

    :try_start_33
    const-string v2, "\r"

    invoke-interface {p1, v2}, Lcom/aide/ui/views/editor/ra$a;->j6(Ljava/lang/String;)V

    goto :goto_54

    :cond_39
    sub-int v3, v6, v7

    invoke-interface {p1, v4, p2, v7, v3}, Lcom/aide/ui/views/editor/ra$a;->j6(I[CII)Z

    move-result v3

    if-nez v3, :cond_42

    return-object p2

    :cond_42
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v6, 0x1

    move v7, v3

    const/4 v3, 0x1

    goto :goto_6c

    :cond_49
    if-eqz v3, :cond_57

    add-int/lit8 v7, v7, 0x1

    if-nez v2, :cond_55

    const-string v2, "\r\n"

    invoke-interface {p1, v2}, Lcom/aide/ui/views/editor/ra$a;->j6(Ljava/lang/String;)V

    :goto_54
    const/4 v2, 0x1

    :cond_55
    const/4 v3, 0x0

    goto :goto_6c

    :cond_57
    if-nez v2, :cond_5f

    const-string v2, "\n"

    invoke-interface {p1, v2}, Lcom/aide/ui/views/editor/ra$a;->j6(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_5f
    sub-int v8, v6, v7

    invoke-interface {p1, v4, p2, v7, v8}, Lcom/aide/ui/views/editor/ra$a;->j6(I[CII)Z

    move-result v7

    if-nez v7, :cond_68

    return-object p2

    :cond_68
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v7, v6, 0x1

    :goto_6c
    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    :cond_6f
    if-nez v7, :cond_82

    array-length v1, p2

    if-ne v8, v1, :cond_88

    array-length v1, p2

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    array-length v5, p2

    invoke-static {p2, v0, v1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p2, p2

    move-object v11, v1

    move v1, p2

    move-object p2, v11

    goto :goto_15

    :cond_82
    if-ge v7, v8, :cond_8a

    sub-int/2addr v8, v7

    invoke-static {p2, v7, p2, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_88
    move v1, v8

    goto :goto_15

    :cond_8a
    const/4 v1, 0x0

    goto :goto_15

    :cond_8c
    if-eqz v1, :cond_91

    invoke-interface {p1, v4, p2, v0, v1}, Lcom/aide/ui/views/editor/ra$a;->DW(I[CII)V
    :try_end_91
    .catchall {:try_start_33 .. :try_end_91} :catchall_92

    :cond_91
    return-object p2

    :catchall_92
    move-exception v0

    move-object v7, p2

    sget-boolean p2, Lcom/aide/ui/views/editor/ra;->DW:Z

    if-eqz p2, :cond_a4

    const-wide v2, -0xa77acf624e58c6cL

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a4
    goto :goto_a6

    :goto_a5
    throw v0

    :goto_a6
    goto :goto_a5
.end method
