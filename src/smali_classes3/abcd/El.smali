.class public Labcd/El;
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

    const-class v0, Labcd/El;

    const-wide v1, 0x114d8ee211bfd5b0L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x19a42cb69010a8ccL  # 3.709359402484435E-185

    :try_start_6
    sget-boolean v3, Labcd/El;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/El;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public static j6(Lcom/aide/ui/AIDEEditor;CII)Z
    .registers 13

    :try_start_0
    sget-boolean v0, Labcd/El;->j6:Z

    if-eqz v0, :cond_1d

    new-instance v5, Ljava/lang/Character;

    invoke-direct {v5, p1}, Ljava/lang/Character;-><init>(C)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x291143f8a359fae8L  # 7.179283159161053E-111

    const/4 v3, 0x0

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    const/16 v0, 0x7b

    if-ne p1, v0, :cond_29

    const/16 v0, 0x7d

    invoke-virtual {p0, p3, p2, v0}, Lcom/aide/ui/AIDEEditor;->j6(IIC)V

    invoke-virtual {p0, p2, p3}, Lcom/aide/ui/AIDEEditor;->EQ(II)V
    :try_end_29
    .catchall {:try_start_0 .. :try_end_29} :catchall_2b

    :cond_29
    const/4 p0, 0x1

    return p0

    :catchall_2b
    move-exception v0

    sget-boolean v1, Labcd/El;->DW:Z

    if-eqz v1, :cond_4a

    const-wide v2, 0x291143f8a359fae8L  # 7.179283159161053E-111

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Character;

    invoke-direct {v6, p1}, Ljava/lang/Character;-><init>(C)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4a
    throw v0
.end method

.method public static j6(Lcom/aide/ui/AIDEEditor;III)Z
    .registers 13

    :try_start_0
    sget-boolean v0, Labcd/El;->j6:Z

    if-eqz v0, :cond_1d

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x1123b4b0f7967f65L  # 4.159181698251092E-226

    const/4 v3, 0x0

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    move v0, p1

    :goto_1e
    const/4 v1, 0x1

    if-le v0, v1, :cond_32

    invoke-virtual {p0, v0}, Lcom/aide/ui/AIDEEditor;->Hw(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_32

    add-int/lit8 v0, v0, -0x1

    goto :goto_1e

    :cond_32
    invoke-virtual {p0, v0}, Lcom/aide/ui/AIDEEditor;->FH(I)I

    move-result v2

    invoke-virtual {p0, v0}, Lcom/aide/ui/AIDEEditor;->Hw(I)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v3}, Lcom/aide/ui/AIDEEditor;->Hw(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "{"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_66

    const-string v0, "}"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-virtual {p0, v3, v1}, Lcom/aide/ui/AIDEEditor;->u7(II)V

    invoke-virtual {p0, v3, v1}, Lcom/aide/ui/AIDEEditor;->EQ(II)V

    add-int v0, v2, p3

    invoke-virtual {p0, v3, v0}, Lcom/aide/ui/AIDEEditor;->gn(II)V

    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/aide/ui/AIDEEditor;->gn(II)V

    goto :goto_69

    :cond_61
    add-int/2addr v2, p3

    invoke-virtual {p0, v3, v2}, Lcom/aide/ui/AIDEEditor;->gn(II)V

    goto :goto_69

    :cond_66
    invoke-virtual {p0, v3, v2}, Lcom/aide/ui/AIDEEditor;->gn(II)V
    :try_end_69
    .catchall {:try_start_0 .. :try_end_69} :catchall_6a

    :goto_69
    return v1

    :catchall_6a
    move-exception v0

    sget-boolean v1, Labcd/El;->DW:Z

    if-eqz v1, :cond_89

    const-wide v2, 0x1123b4b0f7967f65L  # 4.159181698251092E-226

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_89
    goto :goto_8b

    :goto_8a
    throw v0

    :goto_8b
    goto :goto_8a
.end method
