.class public Labcd/Gl;
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

    const-class v0, Labcd/Gl;

    const-wide v1, -0x37c0c2c8a92914e0L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x44dc58a84714c8ffL  # -8.128572476404438E-24

    :try_start_6
    sget-boolean v3, Labcd/Gl;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/Gl;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public static j6(Lcom/aide/ui/AIDEEditor;CII)Z
    .registers 13

    :try_start_0
    sget-boolean v0, Labcd/Gl;->j6:Z

    if-eqz v0, :cond_1d

    new-instance v5, Ljava/lang/Character;

    invoke-direct {v5, p1}, Ljava/lang/Character;-><init>(C)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x2ee3e5c206c30bfdL  # -5.33143245710476E82

    const/4 v3, 0x0

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    const/16 v0, 0x2f

    if-ne p1, v0, :cond_35

    invoke-virtual {p0, p2}, Lcom/aide/ui/AIDEEditor;->Hw(I)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, p3, -0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0
    :try_end_32
    .catchall {:try_start_0 .. :try_end_32} :catchall_37

    if-eqz p0, :cond_35

    return v2

    :cond_35
    const/4 p0, 0x1

    return p0

    :catchall_37
    move-exception v0

    sget-boolean v1, Labcd/Gl;->DW:Z

    if-eqz v1, :cond_56

    const-wide v2, -0x2ee3e5c206c30bfdL  # -5.33143245710476E82

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

    :cond_56
    throw v0
.end method

.method public static j6(Lcom/aide/ui/AIDEEditor;III)Z
    .registers 13

    const-string v0, "<"

    :try_start_2
    sget-boolean v1, Labcd/Gl;->j6:Z

    if-eqz v1, :cond_1f

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x880ee9e21e86930L

    const/4 v4, 0x0

    move-object v5, p0

    invoke-static/range {v2 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    move v1, p1

    :goto_20
    const/4 v2, 0x1

    if-le v1, v2, :cond_34

    invoke-virtual {p0, v1}, Lcom/aide/ui/AIDEEditor;->Hw(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_34

    add-int/lit8 v1, v1, -0x1

    goto :goto_20

    :cond_34
    invoke-virtual {p0, v1}, Lcom/aide/ui/AIDEEditor;->FH(I)I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/aide/ui/AIDEEditor;->Hw(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1}, Lcom/aide/ui/AIDEEditor;->Hw(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {p0, v5}, Lcom/aide/ui/AIDEEditor;->Hw(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4
    :try_end_4c
    .catchall {:try_start_2 .. :try_end_4c} :catchall_ae

    const-string v7, "</"

    if-eqz v4, :cond_67

    :try_start_50
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_67

    invoke-virtual {p0, v5, v2}, Lcom/aide/ui/AIDEEditor;->u7(II)V

    invoke-virtual {p0, v5, v2}, Lcom/aide/ui/AIDEEditor;->EQ(II)V

    add-int v0, v3, p3

    invoke-virtual {p0, v5, v0}, Lcom/aide/ui/AIDEEditor;->gn(II)V

    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0, v3}, Lcom/aide/ui/AIDEEditor;->gn(II)V

    goto :goto_ad

    :cond_67
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_97

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_97

    const/4 v0, 0x0

    :goto_79
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v6, v4, :cond_8c

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v7, 0x3e

    if-ne v4, v7, :cond_89

    add-int/lit8 v0, v0, 0x1

    :cond_89
    add-int/lit8 v6, v6, 0x1

    goto :goto_79

    :cond_8c
    if-gt v0, v2, :cond_93

    add-int/2addr v3, p3

    invoke-virtual {p0, v5, v3}, Lcom/aide/ui/AIDEEditor;->gn(II)V

    goto :goto_ad

    :cond_93
    invoke-virtual {p0, v5, v3}, Lcom/aide/ui/AIDEEditor;->gn(II)V

    goto :goto_ad

    :cond_97
    const-string v4, "/>"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_93

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_93

    sub-int/2addr v3, p3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v5, v0}, Lcom/aide/ui/AIDEEditor;->gn(II)V
    :try_end_ad
    .catchall {:try_start_50 .. :try_end_ad} :catchall_ae

    :goto_ad
    return v2

    :catchall_ae
    move-exception v0

    sget-boolean v1, Labcd/Gl;->DW:Z

    if-eqz v1, :cond_cd

    const-wide v2, 0x880ee9e21e86930L

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

    :cond_cd
    goto :goto_cf

    :goto_ce
    throw v0

    :goto_cf
    goto :goto_ce
.end method
