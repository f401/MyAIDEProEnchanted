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
    .registers 4

    const-wide v2, 0x1edc846cfccd8bc9L    # 5.07096411618924E-160

    const-class v0, Labcd/Fl;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, -0x2ab3ba1bca366069L    # -7.915541655290692E102

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Fl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2ab3ba1bca366069L    # -7.915541655290692E102

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Fl;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static j6(Lcom/aide/ui/AIDEEditor;CII)Z
    .registers 16

    const-wide v10, 0x337b1eaa34300bd4L    # 1.054792712048622E-60

    const/4 v9, 0x0

    const/16 v8, 0x7d

    const/4 v7, 0x1

    :try_start_0
    sget-boolean v0, Labcd/Fl;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Character;

    invoke-direct {v4, p1}, Ljava/lang/Character;-><init>(C)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x337b1eaa34300bd4L    # 1.054792712048622E-60

    const/4 v2, 0x0

    move-object v3, p0

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/16 v0, 0x7b

    if-ne p1, v0, :cond_3

    const/16 v0, 0x7d

    invoke-virtual {p0, p3, p2, v0}, Lcom/aide/ui/AIDEEditor;->j6(IIC)V

    invoke-virtual {p0, p2, p3}, Lcom/aide/ui/AIDEEditor;->EQ(II)V

    invoke-virtual {p0, p2}, Lcom/aide/ui/AIDEEditor;->Hw(I)Ljava/lang/String;

    move-result-object v0

    if-le p3, v7, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, p3, :cond_1

    const/4 v1, 0x0

    add-int/lit8 v2, p3, -0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    if-le p2, v7, :cond_2

    add-int/lit8 v0, p2, -0x1

    invoke-virtual {p0, v0}, Lcom/aide/ui/AIDEEditor;->Hw(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/Fl;->j6(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, p2, -0x1

    invoke-virtual {p0, v0}, Lcom/aide/ui/AIDEEditor;->FH(I)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/aide/ui/AIDEEditor;->gn(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return v7

    :cond_2
    const-string v0, ""

    goto :goto_0

    :cond_3
    if-ne p1, v8, :cond_1

    :try_start_1
    invoke-virtual {p0, p2}, Lcom/aide/ui/AIDEEditor;->Hw(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, p3, :cond_1

    add-int/lit8 v1, p3, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v8, :cond_1

    invoke-virtual {p0, p3, p2}, Lcom/aide/ui/AIDEEditor;->tp(II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Fl;->DW:Z

    if-eqz v0, :cond_4

    new-instance v6, Ljava/lang/Character;

    invoke-direct {v6, p1}, Ljava/lang/Character;-><init>(C)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v10

    move-object v4, v9

    move-object v5, p0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1
.end method

.method public static j6(Lcom/aide/ui/AIDEEditor;III)Z
    .registers 16

    const-wide v10, 0x3211e8bad085861fL    # 1.66071364909649E-67

    const/4 v9, 0x0

    const/4 v7, 0x1

    :try_start_0
    sget-boolean v0, Labcd/Fl;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x3211e8bad085861fL    # 1.66071364909649E-67

    const/4 v2, 0x0

    move-object v3, p0

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    move v0, p1

    :goto_0
    if-le v0, v7, :cond_2

    invoke-virtual {p0, v0}, Lcom/aide/ui/AIDEEditor;->Hw(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/aide/ui/AIDEEditor;->Hw(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/aide/ui/AIDEEditor;->FH(I)I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/aide/ui/AIDEEditor;->Hw(I)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Lcom/aide/ui/AIDEEditor;->Hw(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "{"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/aide/ui/AIDEEditor;->u7(II)V

    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/aide/ui/AIDEEditor;->EQ(II)V

    add-int v0, v1, p3

    invoke-virtual {p0, v2, v0}, Lcom/aide/ui/AIDEEditor;->gn(II)V

    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/aide/ui/AIDEEditor;->gn(II)V

    :goto_1
    return v7

    :cond_3
    add-int v0, v1, p3

    invoke-virtual {p0, v2, v0}, Lcom/aide/ui/AIDEEditor;->gn(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Fl;->DW:Z

    if-eqz v0, :cond_4

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v10

    move-object v4, v9

    move-object v5, p0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1

    :cond_5
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/Fl;->j6(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    add-int v0, v1, p3

    invoke-virtual {p0, v2, v0}, Lcom/aide/ui/AIDEEditor;->gn(II)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v2, v1}, Lcom/aide/ui/AIDEEditor;->gn(II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static j6(Ljava/lang/String;)Z
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x1fd5dad59bdcb379L
    .end annotation

    const-wide v6, 0x3490241b9dc4864fL    # 1.6457069083328785E-55

    const/4 v4, 0x0

    const/4 v0, 0x1

    :try_start_0
    sget-boolean v1, Labcd/Fl;->j6:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x3490241b9dc4864fL    # 1.6457069083328785E-55

    const/4 v1, 0x0

    invoke-static {v2, v3, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-string v1, "if"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ")"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const-string v1, "else if"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ")"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_3
    const-string v1, "while"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, ")"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_4
    const-string v1, "else"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "case"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Fl;->DW:Z

    if-eqz v1, :cond_6

    invoke-static {v0, v6, v7, v4, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    throw v0
.end method
