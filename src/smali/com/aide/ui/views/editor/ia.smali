.class Lcom/aide/ui/views/editor/ia;
.super Lcom/aide/ui/views/editor/a;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/views/editor/OEditor;->KD()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static Hw:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static v5:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field


# instance fields
.field final Zo:Lcom/aide/ui/views/editor/OEditor;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/views/editor/ia;

    const-wide v2, -0x617ac3500286c73bL

    const-wide v4, -0x1600504655c390acL    # -3.880702682295462E202

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/views/editor/OEditor;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-direct {p0}, Lcom/aide/ui/views/editor/a;-><init>()V

    return-void
.end method


# virtual methods
.method public j6()V
    .registers 13
    .annotation runtime Labcd/su;
        method = -0x1676bfbc985a20L
    .end annotation

    const-wide v10, -0x4e735d2c9a98ca4cL    # -5.186375431253711E-70

    const/4 v3, 0x0

    const/4 v8, -0x1

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/ia;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4e735d2c9a98ca4cL    # -5.186375431253711E-70

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-static {v0}, Lcom/aide/ui/views/editor/OEditor;->Hw(Lcom/aide/ui/views/editor/OEditor;)Lcom/aide/ui/views/editor/OEditor$b;

    move-result-object v4

    iget-object v0, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    sget-object v1, Lcom/aide/ui/views/editor/OEditor$b;->VH:Lcom/aide/ui/views/editor/OEditor$b;

    invoke-static {v0, v1}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor;Lcom/aide/ui/views/editor/OEditor$b;)V

    iget-object v0, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OEditor;->lg()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OConsole;->J0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aide/ui/views/editor/OConsole;->setSelectionVisibility(Z)V

    :cond_1
    iget-object v0, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OConsole;->getCaretColumn()I

    move-result v1

    iget-object v0, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v5

    iget-object v0, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/aide/ui/views/editor/o;->v5()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v5, v0, :cond_3

    iget-object v2, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v0

    if-ne v1, v0, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/aide/ui/views/editor/o;->EQ(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const-string v2, "\n"

    if-ne v1, v0, :cond_7

    :try_start_1
    iget-object v0, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v0

    invoke-virtual {v0, v5, p0}, Lcom/aide/ui/views/editor/g;->j6(ILjava/lang/Object;)V

    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WINDOWS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v8, :cond_5

    :goto_1
    sget-object v0, Lcom/aide/ui/views/editor/OEditor$b;->VH:Lcom/aide/ui/views/editor/OEditor$b;

    if-ne v4, v0, :cond_6

    iget-object v0, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-static {v0, v2}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/ia;->v5:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v10, v11, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4
    throw v0

    :cond_5
    :try_start_2
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-static {v0, v2}, Lcom/aide/ui/views/editor/OEditor;->DW(Lcom/aide/ui/views/editor/OEditor;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v0

    if-ge v1, v0, :cond_2

    move v0, v1

    :goto_2
    iget-object v6, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v6}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v6

    if-ge v0, v6, :cond_d

    iget-object v6, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v6}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v6

    invoke-interface {v6, v0, v5}, Lcom/aide/ui/views/editor/o;->FH(II)C

    move-result v6

    const/16 v7, 0x20

    if-eq v6, v7, :cond_8

    iget-object v6, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v6}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v6

    invoke-interface {v6, v0, v5}, Lcom/aide/ui/views/editor/o;->FH(II)C

    move-result v6

    const/16 v7, 0x9

    if-eq v6, v7, :cond_8

    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v3}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v3

    invoke-interface {v3, v5}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v2, v1, v5, v3}, Lcom/aide/ui/views/editor/g;->j6(III)[C

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    sget-object v2, Lcom/aide/ui/views/editor/OEditor$b;->VH:Lcom/aide/ui/views/editor/OEditor$b;

    if-ne v4, v2, :cond_9

    iget-object v2, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-static {v2, v0}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor;Ljava/lang/String;)V

    :goto_4
    iget-object v0, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v0

    iget-object v2, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v2

    invoke-interface {v2, v5}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v1, v5, v2, p0}, Lcom/aide/ui/views/editor/g;->j6(IIILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    iget-object v2, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-static {v2, v0}, Lcom/aide/ui/views/editor/OEditor;->DW(Lcom/aide/ui/views/editor/OEditor;Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v3}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v3

    iget-object v6, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v6}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {v3, v1, v5, v6}, Lcom/aide/ui/views/editor/g;->j6(III)[C

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    sget-object v3, Lcom/aide/ui/views/editor/OEditor$b;->VH:Lcom/aide/ui/views/editor/OEditor$b;

    if-ne v4, v3, :cond_b

    iget-object v3, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-static {v3, v0}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor;Ljava/lang/String;)V

    :goto_5
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "WINDOWS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v8, :cond_c

    move-object v0, v2

    :goto_6
    iget-object v2, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-static {v2, v0}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v0

    iget-object v2, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v2

    invoke-interface {v2, v5}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v1, v5, v2, p0}, Lcom/aide/ui/views/editor/g;->j6(IIILjava/lang/Object;)V

    iget-object v0, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v0

    invoke-virtual {v0, v5, p0}, Lcom/aide/ui/views/editor/g;->j6(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_b
    iget-object v3, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-static {v3, v0}, Lcom/aide/ui/views/editor/OEditor;->DW(Lcom/aide/ui/views/editor/OEditor;Ljava/lang/String;)V

    goto :goto_5

    :cond_c
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_6

    :cond_d
    move v0, v3

    goto/16 :goto_3
.end method
