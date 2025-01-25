.class public Labcd/Fl;
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

    const-class v0, Labcd/Fl;

    const-wide v1, 0x1edc846cfccd8bc9L  # 5.07096411618924E-160

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x2ab3ba1bca366069L  # -7.915541655290692E102

    :try_start_6
    sget-boolean v3, Labcd/Fl;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/Fl;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public static j6(Lcom/aide/ui/AIDEEditor;CII)Z
    .registers 13

    :try_start_0
    sget-boolean v0, Labcd/Fl;->j6:Z

    if-eqz v0, :cond_1d

    new-instance v5, Ljava/lang/Character;

    invoke-direct {v5, p1}, Ljava/lang/Character;-><init>(C)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x337b1eaa34300bd4L  # 1.054792712048622E-60

    const/4 v3, 0x0

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    const/16 v0, 0x7b

    const/16 v1, 0x7d

    const/4 v2, 0x1

    if-ne p1, v0, :cond_66

    invoke-virtual {p0, p3, p2, v1}, Lcom/aide/ui/AIDEEditor;->j6(IIC)V

    invoke-virtual {p0, p2, p3}, Lcom/aide/ui/AIDEEditor;->EQ(II)V

    invoke-virtual {p0, p2}, Lcom/aide/ui/AIDEEditor;->Hw(I)Ljava/lang/String;

    move-result-object v0

    if-le p3, v2, :cond_7d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, p3, :cond_7d

    add-int/lit8 v1, p3, -0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7d

    if-le p2, v2, :cond_50

    add-int/lit8 v0, p2, -0x1

    invoke-virtual {p0, v0}, Lcom/aide/ui/AIDEEditor;->Hw(I)Ljava/lang/String;

    move-result-object v0
    :try_end_4f
    .catchall {:try_start_0 .. :try_end_4f} :catchall_7e

    goto :goto_52

    :cond_50
    const-string v0, ""

    :goto_52
    :try_start_52
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/Fl;->j6(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7d

    add-int/lit8 v0, p2, -0x1

    invoke-virtual {p0, v0}, Lcom/aide/ui/AIDEEditor;->FH(I)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/aide/ui/AIDEEditor;->gn(II)V

    goto :goto_7d

    :cond_66
    if-ne p1, v1, :cond_7d

    invoke-virtual {p0, p2}, Lcom/aide/ui/AIDEEditor;->Hw(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, p3, :cond_7d

    add-int/lit8 v3, p3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_7d

    invoke-virtual {p0, p3, p2}, Lcom/aide/ui/AIDEEditor;->tp(II)V
    :try_end_7d
    .catchall {:try_start_52 .. :try_end_7d} :catchall_7e

    :cond_7d
    :goto_7d
    return v2

    :catchall_7e
    move-exception v0

    sget-boolean v1, Labcd/Fl;->DW:Z

    if-eqz v1, :cond_9d

    const-wide v2, 0x337b1eaa34300bd4L  # 1.054792712048622E-60

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

    :cond_9d
    throw v0
.end method

.method public static j6(Lcom/aide/ui/AIDEEditor;III)Z
    .registers 13

    :try_start_0
    sget-boolean v0, Labcd/Fl;->j6:Z

    if-eqz v0, :cond_1d

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x3211e8bad085861fL  # 1.66071364909649E-67

    const/4 v3, 0x0

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    move v0, p1

    :goto_1e
    const/4 v1, 0x1

    if-le v0, v1, :cond_3e

    invoke-virtual {p0, v0}, Lcom/aide/ui/AIDEEditor;->Hw(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3b

    invoke-virtual {p0, v0}, Lcom/aide/ui/AIDEEditor;->Hw(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "//"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    :cond_3b
    add-int/lit8 v0, v0, -0x1

    goto :goto_1e

    :cond_3e
    invoke-virtual {p0, v0}, Lcom/aide/ui/AIDEEditor;->FH(I)I

    move-result v2

    invoke-virtual {p0, v0}, Lcom/aide/ui/AIDEEditor;->Hw(I)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v3}, Lcom/aide/ui/AIDEEditor;->Hw(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "{"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_72

    const-string v0, "}"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-virtual {p0, v3, v1}, Lcom/aide/ui/AIDEEditor;->u7(II)V

    invoke-virtual {p0, v3, v1}, Lcom/aide/ui/AIDEEditor;->EQ(II)V

    add-int v0, v2, p3

    invoke-virtual {p0, v3, v0}, Lcom/aide/ui/AIDEEditor;->gn(II)V

    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/aide/ui/AIDEEditor;->gn(II)V

    goto :goto_80

    :cond_6d
    :goto_6d
    add-int/2addr v2, p3

    invoke-virtual {p0, v3, v2}, Lcom/aide/ui/AIDEEditor;->gn(II)V

    goto :goto_80

    :cond_72
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/Fl;->j6(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7d

    goto :goto_6d

    :cond_7d
    invoke-virtual {p0, v3, v2}, Lcom/aide/ui/AIDEEditor;->gn(II)V
    :try_end_80
    .catchall {:try_start_0 .. :try_end_80} :catchall_81

    :goto_80
    return v1

    :catchall_81
    move-exception v0

    sget-boolean v1, Labcd/Fl;->DW:Z

    if-eqz v1, :cond_a0

    const-wide v2, 0x3211e8bad085861fL  # 1.66071364909649E-67

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

    :cond_a0
    goto :goto_a2

    :goto_a1
    throw v0

    :goto_a2
    goto :goto_a1
.end method

.method private static j6(Ljava/lang/String;)Z
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x1fd5dad59bdcb379L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x3490241b9dc4864fL  # 1.6457069083328785E-55

    :try_start_6
    sget-boolean v3, Labcd/Fl;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const-string v3, "if"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_59

    const-string v4, ")"

    const/4 v5, 0x1

    if-eqz v3, :cond_1f

    :try_start_18
    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    return v5

    :cond_1f
    const-string v3, "else if"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2e

    return v5

    :cond_2e
    const-string v3, "while"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3d

    return v5

    :cond_3d
    const-string v3, "else"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    return v5

    :cond_46
    const-string v3, "case"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_57

    const-string v3, ":"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0
    :try_end_54
    .catchall {:try_start_18 .. :try_end_54} :catchall_59

    if-eqz p0, :cond_57

    return v5

    :cond_57
    const/4 p0, 0x0

    return p0

    :catchall_59
    move-exception v3

    sget-boolean v4, Labcd/Fl;->DW:Z

    if-eqz v4, :cond_61

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_61
    throw v3
.end method
