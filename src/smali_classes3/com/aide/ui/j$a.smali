.class Lcom/aide/ui/j$a;
.super Landroid/widget/ArrayAdapter;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/aide/engine/SourceEntity;",
        ">;"
    }
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


# instance fields
.field final FH:Lcom/aide/ui/j;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/j$a;

    const-wide v1, -0x15c4862b0055ca58L  # -5.384050362938623E203

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/j;Landroid/content/Context;Ljava/util/List;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x78a212e809c500L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/aide/engine/SourceEntity;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/j$a;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x1ca1826601d82410L

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    iput-object p1, p0, Lcom/aide/ui/j$a;->FH:Lcom/aide/ui/j;

    invoke-static {p3}, Lcom/s1243808733/aide/completion/CompletionAdapter;->hookSourceEntity(Ljava/util/List;)V

    const v0, 0x7f0a0008

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/j$a;->DW:Z

    if-eqz v1, :cond_2e

    const-wide v2, -0x1ca1826601d82410L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    throw v0
.end method

.method private j6(Landroid/widget/TextView;II)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x3bfbdc70f8956c2bL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/j$a;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x9ea325f2f2e7000L  # -6.704666806547316E260

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v2, 0x21

    invoke-interface {v0, v1, p2, p3, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V
    :try_end_29
    .catchall {:try_start_0 .. :try_end_29} :catchall_2a

    return-void

    :catchall_2a
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/j$a;->DW:Z

    if-eqz v1, :cond_44

    const-wide v2, -0x9ea325f2f2e7000L  # -6.704666806547316E260

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_44
    throw v0
.end method

.method private j6(Landroid/widget/TextView;III)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x284c288f80d49da0L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/j$a;->j6:Z

    if-eqz v0, :cond_1d

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x29b69797715589e3L  # -4.661828664046384E107

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v2, 0x21

    invoke-interface {v0, v1, p2, p3, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V
    :try_end_2d
    .catchall {:try_start_0 .. :try_end_2d} :catchall_2e

    return-void

    :catchall_2e
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/j$a;->DW:Z

    if-eqz v1, :cond_4d

    const-wide v2, -0x29b69797715589e3L  # -4.661828664046384E107

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4d
    throw v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 20

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez p2, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/aide/ui/j$a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0a0008

    move-object/from16 v4, p3

    invoke-virtual {v2, v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_19

    :cond_17
    move-object/from16 v2, p2

    :goto_19
    invoke-virtual/range {p0 .. p1}, Lcom/aide/ui/j$a;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/engine/SourceEntity;

    const/16 v4, 0x8

    const v5, 0x7f080026

    const v6, 0x7f070011

    const v7, 0x7f080024

    const v8, 0x7f080025

    if-nez v3, :cond_4e

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v3, "No matches"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    :goto_47
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    move/from16 v1, p1

    goto/16 :goto_139

    :cond_4e
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/aide/engine/SourceEntity;->we()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/aide/ui/h;->j6:[I

    invoke-virtual {v3}, Lcom/aide/engine/SourceEntity;->EQ()Lcom/aide/engine/SourceEntity$a;

    move-result-object v11

    invoke-virtual {v11}, Lcom/aide/engine/SourceEntity$a;->ordinal()I

    move-result v11

    aget v10, v10, v11

    const/4 v11, 0x4

    const/4 v12, 0x3

    const v13, 0x7f050008

    const/4 v14, 0x2

    const/4 v15, 0x1

    if-eq v10, v15, :cond_a4

    if-eq v10, v14, :cond_a4

    if-ne v10, v12, :cond_72

    goto :goto_a4

    :cond_72
    if-eq v10, v11, :cond_85

    const/4 v13, 0x5

    if-eq v10, v13, :cond_78

    goto :goto_d8

    :cond_78
    sget-object v10, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-direct {v0, v8, v1, v9}, Lcom/aide/ui/j$a;->j6(Landroid/widget/TextView;II)V

    goto :goto_db

    :cond_85
    invoke-virtual {v3}, Lcom/aide/engine/SourceEntity;->j3()Z

    move-result v1

    if-eqz v1, :cond_d8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v10, " - "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/aide/engine/SourceEntity;->Zo()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_b9

    :cond_a4
    :goto_a4
    invoke-virtual {v3}, Lcom/aide/engine/SourceEntity;->J8()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_b9
    sget-object v10, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v8, v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v10, v0, Lcom/aide/ui/j$a;->FH:Lcom/aide/ui/j;

    invoke-static {v10}, Lcom/aide/ui/j;->DW(Lcom/aide/ui/j;)Lcom/aide/ui/AIDEEditor;

    move-result-object v10

    invoke-virtual {v10}, Lcom/aide/ui/AIDEEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-direct {v0, v8, v9, v1, v10}, Lcom/aide/ui/j$a;->j6(Landroid/widget/TextView;III)V

    goto :goto_db

    :cond_d8
    :goto_d8
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_db
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget-object v7, Lcom/aide/ui/h;->j6:[I

    invoke-virtual {v3}, Lcom/aide/engine/SourceEntity;->EQ()Lcom/aide/engine/SourceEntity$a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/aide/engine/SourceEntity$a;->ordinal()I

    move-result v8

    aget v7, v7, v8

    if-eq v7, v15, :cond_120

    const v8, 0x7f07000b

    if-eq v7, v14, :cond_112

    if-ne v7, v12, :cond_f7

    goto :goto_11c

    :cond_f7
    if-eq v7, v11, :cond_104

    const/4 v3, 0x6

    if-eq v7, v3, :cond_100

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_130

    :cond_100
    const v3, 0x7f0700f0

    goto :goto_12d

    :cond_104
    invoke-virtual {v3}, Lcom/aide/engine/SourceEntity;->XL()Z

    move-result v3

    if-eqz v3, :cond_10e

    const v3, 0x7f0700ef

    goto :goto_12d

    :cond_10e
    const v3, 0x7f0700ee

    goto :goto_12d

    :cond_112
    invoke-virtual {v3}, Lcom/aide/engine/SourceEntity;->XL()Z

    move-result v3

    if-eqz v3, :cond_11c

    const v3, 0x7f07000c

    goto :goto_12d

    :cond_11c
    :goto_11c
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_130

    :cond_120
    invoke-virtual {v3}, Lcom/aide/engine/SourceEntity;->XL()Z

    move-result v3

    if-eqz v3, :cond_12a

    const v3, 0x7f07000e

    goto :goto_12d

    :cond_12a
    const v3, 0x7f070010

    :goto_12d
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_130
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/view/View;

    goto/16 :goto_47

    :goto_139
    invoke-static {v0, v1, v2}, Lcom/s1243808733/aide/completion/CompletionAdapter;->setView(Ljava/lang/Object;ILandroid/view/View;)V

    return-object v2
.end method
