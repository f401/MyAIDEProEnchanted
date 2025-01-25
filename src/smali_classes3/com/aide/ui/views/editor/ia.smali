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
    .registers 5

    const-wide v0, -0x617ac3500286c73bL

    const-wide v2, -0x1600504655c390acL  # -3.880702682295462E202

    const-class v4, Lcom/aide/ui/views/editor/ia;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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
    .registers 16
    .annotation runtime Labcd/su;
        method = -0x1676bfbc985a20L
    .end annotation

    const-wide v0, -0x4e735d2c9a98ca4cL  # -5.186375431253711E-70

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/ia;->Hw:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-static {v2}, Lcom/aide/ui/views/editor/OEditor;->Hw(Lcom/aide/ui/views/editor/OEditor;)Lcom/aide/ui/views/editor/OEditor$b;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    sget-object v4, Lcom/aide/ui/views/editor/OEditor$b;->VH:Lcom/aide/ui/views/editor/OEditor$b;

    invoke-static {v3, v4}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor;Lcom/aide/ui/views/editor/OEditor$b;)V

    iget-object v3, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v3}, Lcom/aide/ui/views/editor/OEditor;->lg()Z

    move-result v3

    if-eqz v3, :cond_175

    iget-object v3, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v3}, Lcom/aide/ui/views/editor/OConsole;->J0()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2f

    iget-object v3, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v3, v4}, Lcom/aide/ui/views/editor/OConsole;->setSelectionVisibility(Z)V

    :cond_2f
    iget-object v3, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v3}, Lcom/aide/ui/views/editor/OConsole;->getCaretColumn()I

    move-result v3

    iget-object v5, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v5}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v5

    iget-object v6, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v6}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v6

    invoke-interface {v6}, Lcom/aide/ui/views/editor/o;->v5()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-ne v5, v6, :cond_56

    iget-object v8, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v8}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v8

    invoke-interface {v8, v6}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v6

    if-ne v3, v6, :cond_56

    return-void

    :cond_56
    iget-object v6, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v6}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v6
    :try_end_60
    .catchall {:try_start_5 .. :try_end_60} :catchall_176

    const-string v8, "line.separator"

    const/4 v9, -0x1

    const-string v10, "WINDOWS"

    const-string v11, "os.name"

    const-string v12, "\n"

    if-ne v3, v6, :cond_9b

    :try_start_6b
    iget-object v3, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v3}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v3

    invoke-virtual {v3, v5, p0}, Lcom/aide/ui/views/editor/g;->j6(ILjava/lang/Object;)V

    invoke-static {v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v9, :cond_85

    goto :goto_89

    :cond_85
    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :goto_89
    sget-object v3, Lcom/aide/ui/views/editor/OEditor$b;->VH:Lcom/aide/ui/views/editor/OEditor$b;

    if-ne v2, v3, :cond_94

    iget-object v2, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-static {v2, v12}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor;Ljava/lang/String;)V

    goto/16 :goto_175

    :cond_94
    iget-object v2, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-static {v2, v12}, Lcom/aide/ui/views/editor/OEditor;->DW(Lcom/aide/ui/views/editor/OEditor;Ljava/lang/String;)V

    goto/16 :goto_175

    :cond_9b
    iget-object v6, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v6}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v6

    if-ge v3, v6, :cond_175

    move v6, v3

    :goto_a8
    iget-object v13, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v13}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v13

    invoke-interface {v13, v5}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v13

    if-ge v6, v13, :cond_d5

    iget-object v13, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v13}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v13

    invoke-interface {v13, v6, v5}, Lcom/aide/ui/views/editor/o;->FH(II)C

    move-result v13

    const/16 v14, 0x20

    if-eq v13, v14, :cond_d2

    iget-object v13, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v13}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v13

    invoke-interface {v13, v6, v5}, Lcom/aide/ui/views/editor/o;->FH(II)C

    move-result v13

    const/16 v14, 0x9

    if-eq v13, v14, :cond_d2

    const/4 v4, 0x1

    goto :goto_d5

    :cond_d2
    add-int/lit8 v6, v6, 0x1

    goto :goto_a8

    :cond_d5
    :goto_d5
    if-eqz v4, :cond_115

    new-instance v4, Ljava/lang/String;

    iget-object v6, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v6}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v6

    iget-object v7, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v7}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v7

    invoke-interface {v7, v5}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v7

    sub-int/2addr v7, v3

    invoke-virtual {v6, v3, v5, v7}, Lcom/aide/ui/views/editor/g;->j6(III)[C

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([C)V

    sget-object v6, Lcom/aide/ui/views/editor/OEditor$b;->VH:Lcom/aide/ui/views/editor/OEditor$b;

    if-ne v2, v6, :cond_fb

    iget-object v2, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-static {v2, v4}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor;Ljava/lang/String;)V

    goto :goto_100

    :cond_fb
    iget-object v2, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-static {v2, v4}, Lcom/aide/ui/views/editor/OEditor;->DW(Lcom/aide/ui/views/editor/OEditor;Ljava/lang/String;)V

    :goto_100
    iget-object v2, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v2

    iget-object v4, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v4}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v4

    invoke-interface {v4, v5}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v2, v3, v5, v4, p0}, Lcom/aide/ui/views/editor/g;->j6(IIILjava/lang/Object;)V

    goto :goto_175

    :cond_115
    new-instance v4, Ljava/lang/String;

    iget-object v6, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v6}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v6

    iget-object v7, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v7}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v7

    invoke-interface {v7, v5}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v7

    sub-int/2addr v7, v3

    invoke-virtual {v6, v3, v5, v7}, Lcom/aide/ui/views/editor/g;->j6(III)[C

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([C)V

    sget-object v6, Lcom/aide/ui/views/editor/OEditor$b;->VH:Lcom/aide/ui/views/editor/OEditor$b;

    if-ne v2, v6, :cond_139

    iget-object v2, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-static {v2, v4}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor;Ljava/lang/String;)V

    goto :goto_13e

    :cond_139
    iget-object v2, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-static {v2, v4}, Lcom/aide/ui/views/editor/OEditor;->DW(Lcom/aide/ui/views/editor/OEditor;Ljava/lang/String;)V

    :goto_13e
    invoke-static {v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v9, :cond_14f

    goto :goto_153

    :cond_14f
    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :goto_153
    iget-object v2, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-static {v2, v12}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v2

    iget-object v4, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v4}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/o;

    move-result-object v4

    invoke-interface {v4, v5}, Lcom/aide/ui/views/editor/o;->EQ(I)I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v2, v3, v5, v4, p0}, Lcom/aide/ui/views/editor/g;->j6(IIILjava/lang/Object;)V

    iget-object v2, p0, Lcom/aide/ui/views/editor/ia;->Zo:Lcom/aide/ui/views/editor/OEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/g;

    move-result-object v2

    invoke-virtual {v2, v5, p0}, Lcom/aide/ui/views/editor/g;->j6(ILjava/lang/Object;)V
    :try_end_175
    .catchall {:try_start_6b .. :try_end_175} :catchall_176

    :cond_175
    :goto_175
    return-void

    :catchall_176
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/ia;->v5:Z

    if-eqz v3, :cond_17e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17e
    goto :goto_180

    :goto_17f
    throw v2

    :goto_180
    goto :goto_17f
.end method
