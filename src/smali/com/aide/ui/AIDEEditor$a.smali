.class Lcom/aide/ui/AIDEEditor$a;
.super Lcom/aide/ui/views/CodeEditText$b;

# interfaces
.implements Labcd/Nk$a;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/AIDEEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# static fields
.field private static SI:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static nw:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field private KD:I
    .annotation runtime Labcd/ru;
        field = -0x30e2ee2a3ba70c30L
    .end annotation
.end field

.field private Sf:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x2483fc672f53ba89L
    .end annotation
.end field

.field private cb:Labcd/em;
    .annotation runtime Labcd/ru;
        field = -0x1676446a089f45d7L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lem",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private cn:I
    .annotation runtime Labcd/ru;
        field = -0xb2dfd81dcc3950dL
    .end annotation
.end field

.field private dx:Labcd/em;
    .annotation runtime Labcd/ru;
        field = 0x2e40b6319465b923L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lem",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private ef:Labcd/la;
    .annotation runtime Labcd/ru;
        field = 0x1c584e1bcc414744L
    .end annotation
.end field

.field private ro:I
    .annotation runtime Labcd/ru;
        field = 0x460d72e711884080L
    .end annotation
.end field

.field private sG:J
    .annotation runtime Labcd/ru;
        field = -0x4688526ecff585a7L
    .end annotation
.end field

.field private sh:Labcd/em;
    .annotation runtime Labcd/ru;
        field = 0x6526329320383bcL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lem",
            "<",
            "Lcom/aide/engine/SyntaxError;",
            ">;"
        }
    .end annotation
.end field

.field final vJ:Lcom/aide/ui/AIDEEditor;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x1cfb6d6a69ea43fL    # -6.81654732287768E299

    const-class v0, Lcom/aide/ui/AIDEEditor$a;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/AIDEEditor;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x1c770930fd7ab97L
    .end annotation

    const-wide v4, 0x2d9cea1efbdbf8c5L    # 5.677766246953322E-89

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2d9cea1efbdbf8c5L    # 5.677766246953322E-89

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-direct {p0, p1}, Lcom/aide/ui/views/CodeEditText$b;-><init>(Lcom/aide/ui/views/CodeEditText;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/aide/ui/AIDEEditor$a;->KD:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/aide/ui/AIDEEditor$a;->DW(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>(Lcom/aide/ui/AIDEEditor;Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x6fc055c4c07f6c9L
    .end annotation

    const-wide v2, 0x24342c509021609bL

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x24342c509021609bL

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-static {p2}, Labcd/FileSystemUtils;->lg(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v0

    invoke-virtual {p1}, Lcom/aide/ui/views/CodeEditText;->getTabSize()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/aide/ui/views/CodeEditText$b;-><init>(Lcom/aide/ui/views/CodeEditText;Ljava/io/Reader;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/aide/ui/AIDEEditor$a;->KD:I

    invoke-static {p2}, Labcd/FileSystemUtils;->gn(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aide/ui/AIDEEditor$a;->sG:J

    invoke-direct {p0, p2}, Lcom/aide/ui/AIDEEditor$a;->DW(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor$a;->nw()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method static synthetic DW(Lcom/aide/ui/AIDEEditor$a;)Labcd/em;
    .registers 2

    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->cb:Labcd/em;

    return-object v0
.end method

.method private DW(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x9ddc55516e58b9L
    .end annotation

    const-wide v2, -0x6842b34771ec3260L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x6842b34771ec3260L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/AIDEEditor$a;->Sf:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->FH()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/aide/engine/service/x;->j6(Ljava/lang/String;Ljava/util/List;)Labcd/la;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->ef:Labcd/la;

    :cond_1
    new-instance v0, Lcom/aide/ui/AIDEEditor$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/aide/ui/AIDEEditor$a$a;-><init>(Lcom/aide/ui/AIDEEditor$a;Lcom/aide/ui/u;)V

    invoke-virtual {p0, v0}, Lcom/aide/ui/views/editor/b;->j6(Lcom/aide/ui/views/editor/p;)V

    new-instance v0, Lcom/aide/ui/D;

    invoke-direct {v0, p0}, Lcom/aide/ui/D;-><init>(Lcom/aide/ui/AIDEEditor$a;)V

    invoke-virtual {p0, v0}, Lcom/aide/ui/views/editor/b;->j6(Lcom/aide/ui/views/editor/p;)V

    new-instance v0, Lcom/aide/ui/E;

    invoke-direct {v0, p0}, Lcom/aide/ui/E;-><init>(Lcom/aide/ui/AIDEEditor$a;)V

    invoke-virtual {p0, v0}, Lcom/aide/ui/views/editor/g;->j6(Lcom/aide/ui/views/editor/g$d;)V

    new-instance v0, Lcom/aide/ui/F;

    invoke-direct {v0, p0}, Lcom/aide/ui/F;-><init>(Lcom/aide/ui/AIDEEditor$a;)V

    invoke-virtual {p0, v0}, Lcom/aide/ui/views/editor/g;->j6(Lcom/aide/ui/views/editor/g$f;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private varargs DW(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 15
    .annotation runtime Labcd/su;
        method = 0x115b13857298d3e8L
    .end annotation

    const-wide v2, -0x156350ea77c20b9L

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x156350ea77c20b9L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Labcd/em;

    invoke-direct {v0}, Labcd/em;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->cb:Labcd/em;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move v1, v4

    :goto_0
    array-length v0, v8
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v1, v0, :cond_6

    aget-object v6, v8, v1

    move v5, v4

    :goto_1
    :try_start_1
    array-length v0, p2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    if-ge v5, v0, :cond_4

    aget-object v9, p2, v5

    :try_start_2
    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v6

    move v7, v4

    :goto_2
    array-length v10, p2

    if-ge v7, v10, :cond_2

    if-eq v5, v7, :cond_1

    aget-object v10, p2, v7

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    aget-object v10, p2, v7

    const-string v11, ""

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3

    iget-object v7, p0, Lcom/aide/ui/AIDEEditor$a;->cb:Labcd/em;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    add-int/lit8 v10, v1, 0x1

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v7, v9, v10, v0}, Labcd/em;->DW(Ljava/lang/Object;II)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v0, :cond_5

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    throw v1

    :cond_6
    return-void
.end method

.method static synthetic FH(Lcom/aide/ui/AIDEEditor$a;)Labcd/em;
    .registers 2

    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->dx:Labcd/em;

    return-object v0
.end method

.method private Hw(IIII)Ljava/lang/String;
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x9400bb0129d7200L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x247250b2b360ca37L    # 4.031755853177983E-133

    move-object v2, p0

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-string v0, ""

    :try_start_1
    new-instance v1, Labcd/hm;

    add-int/lit8 v2, p1, -0x1

    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x1

    add-int/lit8 v5, p4, -0x2

    invoke-direct {v1, v2, v3, v4, v5}, Labcd/hm;-><init>(IIII)V

    invoke-virtual {p0, v1}, Lcom/aide/ui/views/editor/g;->DW(Labcd/hm;)Ljava/io/Reader;

    move-result-object v1

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-static {v1, v2}, Lcom/aide/common/Xa;->j6(Ljava/io/Reader;Ljava/io/Writer;)V

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v0, :cond_1

    const-wide v2, 0x247250b2b360ca37L    # 4.031755853177983E-133

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static synthetic Hw(Lcom/aide/ui/AIDEEditor$a;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor$a;->SI()V

    return-void
.end method

.method private KD()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0xb078e3bae8bd2a1L
    .end annotation

    const-wide v4, -0x1eca4043df8f7e18L    # -1.9110686653857924E160

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1eca4043df8f7e18L    # -1.9110686653857924E160

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v0

    const-string v1, "TarinerHintMaps"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor$a;->Ws()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aide/ui/AIDEEditor$a;->cb:Labcd/em;

    invoke-static {v2}, Lcom/aide/common/wa;->j6(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private QX(I)Z
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x5fe3bbb06663a4fL
    .end annotation

    const-wide v4, -0xe8a02e6b67df180L

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_0

    const-wide v2, -0xe8a02e6b67df180L

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    move v0, v1

    :goto_1
    invoke-virtual {p0, p1}, Lcom/aide/ui/views/editor/g;->EQ(I)I

    move-result v2

    if-ge v0, v2, :cond_4

    invoke-virtual {p0, v0, p1}, Lcom/aide/ui/views/editor/g;->FH(II)C
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_3

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    throw v0
.end method

.method private SI()V
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x2a0ac1f3b8f5affcL
    .end annotation

    const-wide v6, -0x7c75c84d077ac07L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x7c75c84d077ac07L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->dx:Labcd/em;

    if-eqz v0, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->dx:Labcd/em;

    invoke-virtual {v0}, Labcd/em;->DW()Labcd/fm;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/aide/ui/AIDEEditor$a;->dx:Labcd/em;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0}, Labcd/fm;->DW()I

    move-result v4

    invoke-virtual {v0}, Labcd/fm;->j6()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Labcd/em;->j6(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Labcd/fm;->DW()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v2, p0, Lcom/aide/ui/AIDEEditor$a;->dx:Labcd/em;

    invoke-virtual {v2, v0}, Labcd/em;->j6(Labcd/fm;)Labcd/fm;
    :try_end_1
    .catch Labcd/bm; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->dx:Labcd/em;

    :cond_2
    invoke-static {}, Lcom/aide/ui/U;->gn()Lcom/aide/ui/debugger/Debugger;

    move-result-object v0

    iget-object v2, p0, Lcom/aide/ui/AIDEEditor$a;->Sf:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/aide/ui/debugger/Debugger;->j6(Ljava/lang/String;Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    return-void

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method private XL(I)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x29467a1762e4ee65L
    .end annotation

    const-wide v4, -0x2efa82bf488008L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2efa82bf488008L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->dx:Labcd/em;

    if-nez v0, :cond_1

    new-instance v0, Labcd/em;

    invoke-direct {v0}, Labcd/em;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->dx:Labcd/em;

    :cond_1
    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->dx:Labcd/em;

    add-int/lit8 v1, p1, -0x1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Labcd/em;->DW(Ljava/lang/Object;II)V

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor$a;->SI()V

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/aide/ui/views/editor/b;->j6(IIII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method static synthetic j6(Lcom/aide/ui/AIDEEditor$a;)Labcd/em;
    .registers 2

    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->sh:Labcd/em;

    return-object v0
.end method

.method static synthetic j6(Lcom/aide/ui/AIDEEditor$a;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/aide/ui/AIDEEditor$a;->XL(I)V

    return-void
.end method

.method static synthetic j6(Lcom/aide/ui/AIDEEditor$a;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/aide/ui/views/editor/b;->J0(II)V

    return-void
.end method

.method private nw()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x20cb02fa7b88eb90L
    .end annotation

    const-wide v4, 0x6cf9b1fbf54bed3L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x6cf9b1fbf54bed3L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v0

    const-string v1, "TarinerHintMaps"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor$a;->Ws()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/aide/common/wa;->j6(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/em;

    iput-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->cb:Labcd/em;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic v5(Lcom/aide/ui/AIDEEditor$a;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->Sf:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public DW(CII)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x26ca75fbd8ebbbadL
    .end annotation

    const-wide v8, 0x494ab8ec3614e20L    # 1.35746207422708E-286

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Character;

    invoke-direct {v3, p1}, Ljava/lang/Character;-><init>(C)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x494ab8ec3614e20L    # 1.35746207422708E-286

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor$a;->Ws()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    const-string v3, ".java"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ".js"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ".c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ".cpp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ".h"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ".cc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ".hh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ".hpp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ".gradle"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_1
    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v3, p3, 0x1

    invoke-static {v0, p1, v2, v3}, Labcd/Fl;->j6(Lcom/aide/ui/AIDEEditor;CII)Z

    move-result v0

    :goto_0
    xor-int/lit8 v0, v0, 0x1

    :cond_2
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->ef:Labcd/la;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->ef:Labcd/la;

    invoke-interface {v0}, Labcd/la;->v5()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/na;

    invoke-interface {v0, p1}, Labcd/na;->j6(C)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v0

    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v3, p3, 0x1

    iget-object v4, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v4}, Lcom/aide/ui/views/CodeEditText;->getTabSize()I

    move-result v5

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Labcd/Xj;->j6(Ljava/lang/String;IICI)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    invoke-static {}, Lcom/aide/ui/U;->P8()Labcd/ol;

    move-result-object v1

    invoke-virtual {v1, v0}, Labcd/ol;->j6(Ljava/util/List;)V

    :cond_4
    return-void

    :cond_5
    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, ".html"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, ".htm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v3, p3, 0x1

    invoke-static {v0, p1, v2, v3}, Labcd/Gl;->j6(Lcom/aide/ui/AIDEEditor;CII)Z

    move-result v0

    goto :goto_0

    :cond_7
    const-string v3, ".css"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v3, p3, 0x1

    invoke-static {v0, p1, v2, v3}, Labcd/El;->j6(Lcom/aide/ui/AIDEEditor;CII)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v0, :cond_8

    new-instance v5, Ljava/lang/Character;

    invoke-direct {v5, p1}, Ljava/lang/Character;-><init>(C)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    throw v1
.end method

.method public DW(III)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x3417cce7aba954ecL
    .end annotation

    const-wide v8, 0x1bd40767f436f52bL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x1bd40767f436f52bL

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/aide/ui/AIDEEditor$a;->KD:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/aide/ui/AIDEEditor$a;->ro:I

    if-ne p2, v0, :cond_1

    iget v0, p0, Lcom/aide/ui/AIDEEditor$a;->cn:I

    if-ne p3, v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/aide/ui/AIDEEditor$a;->KD:I

    iget v1, p0, Lcom/aide/ui/AIDEEditor$a;->ro:I

    iget v2, p0, Lcom/aide/ui/AIDEEditor$a;->cn:I

    iput p2, p0, Lcom/aide/ui/AIDEEditor$a;->ro:I

    iput p3, p0, Lcom/aide/ui/AIDEEditor$a;->cn:I

    iput p1, p0, Lcom/aide/ui/AIDEEditor$a;->KD:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    invoke-virtual {p0, v1, v0, v2, v0}, Lcom/aide/ui/views/editor/b;->j6(IIII)V

    :cond_2
    iget v0, p0, Lcom/aide/ui/AIDEEditor$a;->ro:I

    iget v1, p0, Lcom/aide/ui/AIDEEditor$a;->KD:I

    iget v2, p0, Lcom/aide/ui/AIDEEditor$a;->cn:I

    iget v3, p0, Lcom/aide/ui/AIDEEditor$a;->KD:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/aide/ui/views/editor/b;->j6(IIII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v0, :cond_3

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method

.method public DW(IIIIII)V
    .registers 13
    .annotation runtime Labcd/su;
        method = -0xcd896e8d966d141L
    .end annotation

    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x25189c49e137b10L

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x4

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aide/ui/AIDEEditor$a;->Hw(IIII)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move v1, p5

    move v2, p6

    move v3, p5

    move v4, p6

    invoke-virtual/range {v0 .. v5}, Lcom/aide/ui/views/CodeEditText$a;->j6(IIIILjava/lang/String;)V

    return-void
.end method

.method public DW(Ljava/util/List;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0xa9cb84b35b952cbL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-wide v6, -0x2e078bec0779fe60L    # -7.600786759196841E86

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2e078bec0779fe60L    # -7.600786759196841E86

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v1, Labcd/em;

    invoke-direct {v1}, Labcd/em;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v0, v4}, Labcd/em;->DW(Ljava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    :try_start_1
    iput-object v1, p0, Lcom/aide/ui/AIDEEditor$a;->dx:Labcd/em;

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->dx:Labcd/em;

    if-eqz v0, :cond_3

    new-instance v0, Labcd/em;

    invoke-direct {v0}, Labcd/em;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->dx:Labcd/em;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public DW(II)Z
    .registers 11
    .annotation runtime Labcd/su;
        method = -0xc68e225c56a032dL
    .end annotation

    const-wide v2, 0x34f3c39e6f2531d0L    # 1.2896700666600553E-53

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v6, 0x34f3c39e6f2531d0L    # 1.2896700666600553E-53

    invoke-static {v6, v7, p0, v0, v4}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->sh:Labcd/em;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {v0, p2, p1}, Labcd/em;->FH(II)Z

    move-result v4

    if-nez v4, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p2, p1}, Labcd/em;->j6(II)Ljava/util/Enumeration;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/engine/SyntaxError;

    invoke-virtual {v0}, Lcom/aide/engine/SyntaxError;->Hw()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v0, :cond_5

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    throw v1
.end method

.method public FH(Ljava/util/List;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x36d0580af23c0045L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aide/engine/SyntaxError;",
            ">;)V"
        }
    .end annotation

    const-wide v8, -0x1eb2468964141d90L    # -5.223742597114046E160

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1eb2468964141d90L    # -5.223742597114046E160

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Labcd/em;

    invoke-direct {v0}, Labcd/em;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v6, v1

    :goto_0
    if-ltz v6, :cond_1

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/engine/SyntaxError;

    iget v2, v2, Lcom/aide/engine/SyntaxError;->v5:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/engine/SyntaxError;

    iget v3, v3, Lcom/aide/engine/SyntaxError;->Zo:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/aide/engine/SyntaxError;

    iget v4, v4, Lcom/aide/engine/SyntaxError;->VH:I

    add-int/lit8 v4, v4, -0x1

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/aide/engine/SyntaxError;

    iget v5, v5, Lcom/aide/engine/SyntaxError;->gn:I

    add-int/lit8 v5, v5, -0x2

    invoke-virtual/range {v0 .. v5}, Labcd/em;->j6(Ljava/lang/Object;IIII)V

    add-int/lit8 v1, v6, -0x1

    move v6, v1

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->sh:Labcd/em;

    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    new-instance v1, Lcom/aide/ui/H;

    invoke-direct {v1, p0}, Lcom/aide/ui/H;-><init>(Lcom/aide/ui/AIDEEditor$a;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v8, v9, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public Hw()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x17c015ec8487375bL
    .end annotation

    const-wide v2, 0x1ff001c90d94a400L    # 7.461591670926185E-155

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1ff001c90d94a400L    # 7.461591670926185E-155

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/g;->er()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Hw(II)Z
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x9314bf0ab535b10L
    .end annotation

    const-wide v2, 0x44ec8b381cb90e27L    # 1.0783552180530528E24

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v6, 0x44ec8b381cb90e27L    # 1.0783552180530528E24

    invoke-static {v6, v7, p0, v0, v4}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->sh:Labcd/em;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {v0, p2, p1}, Labcd/em;->FH(II)Z

    move-result v4

    if-nez v4, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p2, p1}, Labcd/em;->j6(II)Ljava/util/Enumeration;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/engine/SyntaxError;

    invoke-virtual {v0}, Lcom/aide/engine/SyntaxError;->FH()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v0, :cond_5

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    throw v1
.end method

.method public J0()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x32479e71ce8624b0L
    .end annotation

    const-wide v2, -0xebdd3bd78349fefL    # -3.698031432121388E237

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xebdd3bd78349fefL    # -3.698031432121388E237

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/g;->a8()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public J8(I)I
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x12303ff27be41c0L
    .end annotation

    const-wide v4, 0x410094bac855293dL    # 135831.34781868188

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_0

    const-wide v2, 0x410094bac855293dL    # 135831.34781868188

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_2

    move v2, v1

    :cond_1
    return v2

    :cond_2
    move v0, v1

    move v2, v1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/aide/ui/views/editor/g;->EQ(I)I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0, p1}, Lcom/aide/ui/views/editor/g;->FH(II)C

    move-result v1

    const/16 v3, 0x9

    if-eq v1, v3, :cond_3

    const/16 v3, 0x20

    if-ne v1, v3, :cond_1

    add-int/lit8 v1, v2, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v1}, Lcom/aide/ui/views/CodeEditText;->getTabSize()I

    move-result v1

    add-int/2addr v2, v1

    div-int/2addr v2, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    mul-int/2addr v1, v2

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method public J8(II)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x70fee001bfb1a9c0L
    .end annotation

    const-wide v2, -0x190353a527d57659L    # -1.247597231167751E188

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x190353a527d57659L    # -1.247597231167751E188

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v0

    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor$a;->Ws()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v4, p1, 0x1

    add-int/lit8 v5, p2, 0x1

    iget-object v6, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v6}, Lcom/aide/ui/views/CodeEditText;->getTabSize()I

    move-result v6

    invoke-virtual {v0, v1, v4, v5, v6}, Labcd/Xj;->DW(Ljava/lang/String;III)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/U;->P8()Labcd/ol;

    move-result-object v1

    invoke-virtual {v1, v0}, Labcd/ol;->j6(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v0, :cond_1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public QX(II)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x41dce16c1de02e0L
    .end annotation

    const-wide v2, 0x1037fc5071fbadb3L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0x1037fc5071fbadb3L

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor$a;->Ws()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v1

    add-int/lit8 v4, p1, 0x1

    add-int/lit8 v5, p2, 0x1

    iget-object v6, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v6}, Lcom/aide/ui/views/CodeEditText;->getTabSize()I

    move-result v6

    invoke-virtual {v1, v0, v4, v5, v6}, Labcd/Xj;->Hw(Ljava/lang/String;III)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->P8()Labcd/ol;

    move-result-object v1

    invoke-virtual {v1, v0}, Labcd/ol;->j6(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v0, :cond_2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public VH()Ljava/util/List;
    .registers 7
    .annotation runtime Labcd/su;
        method = 0xf604aa3952fd0b8L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide v4, 0x2c832af3b58e8b65L    # 2.8715951376148864E-94

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2c832af3b58e8b65L    # 2.8715951376148864E-94

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/io/BufferedReader;

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/b;->aM()Ljava/io/Reader;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_1
    return-object v0

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public VH(I)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x3e90f4f97dd74ef8L
    .end annotation

    const-wide v2, 0xeab2d2259b0f961L    # 5.216795982605563E-238

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xeab2d2259b0f961L    # 5.216795982605563E-238

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->dx:Labcd/em;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->dx:Labcd/em;

    invoke-virtual {v0, p1}, Labcd/em;->j6(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public Ws()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x48bc1272e7652c0L
    .end annotation

    const-wide v2, -0x1916f14adfb99039L    # -5.451351805856567E187

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1916f14adfb99039L    # -5.451351805856567E187

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->Sf:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Ws(I)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x22936cc7f137f6bbL
    .end annotation

    const-wide v8, 0x4cddbc62915e59a0L    # 1.9113486114525157E62

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4cddbc62915e59a0L    # 1.9113486114525157E62

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->dx:Labcd/em;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->dx:Labcd/em;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Labcd/em;->j6(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->dx:Labcd/em;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    invoke-virtual {v0, v1, v2, v1, v3}, Labcd/em;->j6(IIII)V

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor$a;->SI()V

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/aide/ui/views/editor/b;->j6(IIII)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "debug-aide"

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Zk;->EQ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d05ea

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d05e9

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "debug-aide"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/aide/ui/G;

    invoke-direct {v3, p0, p1}, Lcom/aide/ui/G;-><init>(Lcom/aide/ui/AIDEEditor$a;I)V

    invoke-static {v0, v1, v2, v3}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v8, v9, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    :try_start_1
    invoke-direct {p0, p1}, Lcom/aide/ui/AIDEEditor$a;->XL(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public Ws(II)Z
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x2c65ef0dff4b9503L
    .end annotation

    const-wide v2, 0x7bbc14a23d62500L

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_0
    sget-boolean v4, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v6, 0x7bbc14a23d62500L

    invoke-static {v6, v7, p0, v4, v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor$a;->Ws()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v6, ".java"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, ".js"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, ".c"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, ".cpp"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, ".h"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, ".cc"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, ".hh"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, ".hpp"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, ".gradle"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_1
    iget-object v4, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    add-int/lit8 v6, p1, 0x1

    add-int/lit8 v7, p2, 0x1

    iget-object v8, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-static {v8}, Lcom/aide/ui/AIDEEditor;->Ws(Lcom/aide/ui/AIDEEditor;)I

    move-result v8

    invoke-static {v4, v6, v7, v8}, Labcd/Fl;->j6(Lcom/aide/ui/AIDEEditor;III)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_5

    :cond_2
    :goto_0
    return v0

    :cond_3
    const-string v6, ".xml"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, ".html"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, ".htm"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_4
    iget-object v4, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    add-int/lit8 v6, p1, 0x1

    add-int/lit8 v7, p2, 0x1

    iget-object v8, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-static {v8}, Lcom/aide/ui/AIDEEditor;->Ws(Lcom/aide/ui/AIDEEditor;)I

    move-result v8

    invoke-static {v4, v6, v7, v8}, Labcd/Gl;->j6(Lcom/aide/ui/AIDEEditor;III)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    :cond_5
    :goto_1
    if-eqz v4, :cond_9

    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v4

    add-int/lit8 v6, p1, 0x1

    add-int/lit8 v7, p2, 0x1

    iget-object v8, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v8}, Lcom/aide/ui/views/CodeEditText;->getTabSize()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Labcd/Xj;->FH(Ljava/lang/String;III)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_9

    invoke-static {}, Lcom/aide/ui/U;->P8()Labcd/ol;

    move-result-object v1

    invoke-virtual {v1, v4}, Labcd/ol;->j6(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v0, :cond_6

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    throw v1

    :cond_7
    :try_start_1
    const-string v6, ".css"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    add-int/lit8 v6, p1, 0x1

    add-int/lit8 v7, p2, 0x1

    iget-object v8, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-static {v8}, Lcom/aide/ui/AIDEEditor;->Ws(Lcom/aide/ui/AIDEEditor;)I

    move-result v8

    invoke-static {v4, v6, v7, v8}, Labcd/El;->j6(Lcom/aide/ui/AIDEEditor;III)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_5

    goto/16 :goto_0

    :cond_8
    move v4, v1

    goto :goto_1

    :cond_9
    move v0, v1

    goto/16 :goto_0
.end method

.method public XL(II)Lcom/aide/engine/SyntaxError;
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x11f2bce63fa87c45L
    .end annotation

    const-wide v2, 0x11b41edc2854fe90L    # 2.174317722969412E-223

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v6, 0x11b41edc2854fe90L    # 2.174317722969412E-223

    invoke-static {v6, v7, p0, v0, v4}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->sh:Labcd/em;

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0, p2, p1}, Labcd/em;->FH(II)Z

    move-result v4

    if-nez v4, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p2, p1}, Labcd/em;->j6(II)Ljava/util/Enumeration;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/engine/SyntaxError;

    invoke-virtual {v0}, Lcom/aide/engine/SyntaxError;->FH()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v0, :cond_5

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    throw v1
.end method

.method public aM(II)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x9a7554350d63afL
    .end annotation

    const-wide v2, -0x10356c4d9a9d9e84L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x10356c4d9a9d9e84L

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/aide/ui/AIDEEditor$a;->j6(IIZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v0, :cond_1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public close()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x2a63387c9b11ecc9L
    .end annotation

    const-wide v2, 0x3e59a0f83106a10L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3e59a0f83106a10L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getVersion()J
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1994be39db72e1e1L
    .end annotation

    const-wide v2, 0x65ff312084d7590L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x65ff312084d7590L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/g;->U2()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public gn()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x1f33556b96bf8de0L
    .end annotation

    const-wide v4, 0x4b5db27c6d8d465L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4b5db27c6d8d465L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor$a;->Ws()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/b;->aM()Ljava/io/Reader;

    move-result-object v1

    invoke-static {v0, v1}, Labcd/FileSystemUtils;->j6(Ljava/lang/String;Ljava/io/Reader;)V

    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor$a;->Ws()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/FileSystemUtils;->gn(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aide/ui/AIDEEditor$a;->sG:J

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/g;->gW()V

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor$a;->KD()V

    invoke-static {}, Lcom/aide/ui/U;->tp()Labcd/Ji;

    move-result-object v0

    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor$a;->Ws()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/Ji;->v5(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor$a;->Ws()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " could not be saved!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/s1243808733/util/Toasty;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x289f9c92a0b2d3d0L
    .end annotation

    const-wide v4, -0x1959312bf6773abfL    # -3.101223527985212E186

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1959312bf6773abfL    # -3.101223527985212E186

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-static {v0}, Lcom/aide/ui/AIDEEditor;->VH(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v0

    iget-object v1, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-static {v1}, Lcom/aide/ui/AIDEEditor;->gn(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/views/editor/OConsole;->getCaretColumn()I

    move-result v1

    iget-object v2, p0, Lcom/aide/ui/AIDEEditor$a;->cb:Labcd/em;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    :try_start_1
    iput-object v3, p0, Lcom/aide/ui/AIDEEditor$a;->cb:Labcd/em;

    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor$a;->Ws()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Labcd/FileSystemUtils;->lg(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v3

    invoke-virtual {p0, v3, p0}, Lcom/aide/ui/views/editor/g;->j6(Ljava/io/Reader;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    iput-object v2, p0, Lcom/aide/ui/AIDEEditor$a;->cb:Labcd/em;

    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor$a;->Ws()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Labcd/FileSystemUtils;->gn(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/aide/ui/AIDEEditor$a;->sG:J

    iget-object v2, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-static {v2}, Lcom/aide/ui/AIDEEditor;->u7(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/aide/ui/views/editor/OConsole;->v5(II)V

    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-static {v0}, Lcom/aide/ui/AIDEEditor;->tp(Lcom/aide/ui/AIDEEditor;)V

    return-void

    :catchall_0
    move-exception v0

    iput-object v2, p0, Lcom/aide/ui/AIDEEditor$a;->cb:Labcd/em;

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0

    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public j6(CII)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x95042045982516fL
    .end annotation

    const-wide v8, 0x25be0ee470106478L    # 6.938161757310776E-127

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Character;

    invoke-direct {v3, p1}, Ljava/lang/Character;-><init>(C)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x25be0ee470106478L    # 6.938161757310776E-127

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-static {v0}, Lcom/aide/ui/AIDEEditor;->aM(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/j;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    add-int/lit8 v2, p3, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/aide/ui/j;->j6(CII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v0, :cond_1

    new-instance v5, Ljava/lang/Character;

    invoke-direct {v5, p1}, Ljava/lang/Character;-><init>(C)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public j6(II)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x17c6e1dc6b9a930L
    .end annotation

    const-wide v2, -0x1d813b1374e79569L    # -2.8350081624474165E166

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x1d813b1374e79569L    # -2.8350081624474165E166

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/aide/ui/AIDEEditor$a;->j6(IIZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v0, :cond_1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public j6(IIIIII)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x1901f16da3fbfef9L
    .end annotation

    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x6fa5e07b437d80L

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x4

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aide/ui/AIDEEditor$a;->Hw(IIII)Ljava/lang/String;

    move-result-object v6

    const-string v5, ""

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/aide/ui/views/CodeEditText$a;->j6(IIIILjava/lang/String;)V

    move-object v0, p0

    move v1, p5

    move v2, p6

    move v3, p5

    move v4, p6

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/aide/ui/views/CodeEditText$a;->j6(IIIILjava/lang/String;)V

    return-void
.end method

.method public j6(IIIILjava/lang/String;ZZ)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x12912df3c29ae4e0L
    .end annotation

    const/4 v1, 0x0

    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_0

    const-wide v2, -0x2a4e98b70810c8fbL    # -6.236688267479137E104

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v0, v1

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v0, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v0, v4

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v0, v4

    const/4 v4, 0x4

    aput-object p5, v0, v4

    const/4 v4, 0x5

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p6}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v0, v4

    const/4 v4, 0x6

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p7}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v0, v4

    invoke-static {v2, v3, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditor;->getKeyStrokeDetector()Lcom/aide/common/KeyStrokeDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/common/KeyStrokeDetector;->DW()V

    if-nez p6, :cond_2

    if-eqz p7, :cond_2

    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-static {v0}, Lcom/aide/ui/AIDEEditor;->EQ(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v1

    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-static {v0}, Lcom/aide/ui/AIDEEditor;->we(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OConsole;->getCaretColumn()I

    move-result v0

    move v2, v1

    :goto_0
    invoke-virtual/range {p0 .. p5}, Lcom/aide/ui/views/CodeEditText$a;->j6(IIIILjava/lang/String;)V

    if-nez p6, :cond_1

    if-eqz p7, :cond_1

    iget-object v1, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-static {v1}, Lcom/aide/ui/AIDEEditor;->J0(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/aide/ui/views/editor/OConsole;->v5(II)V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    move v2, v1

    goto :goto_0
.end method

.method public j6(IIZ)V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0x6521e703b984c188L
    .end annotation

    const-wide v10, -0xde84e0bc4301711L    # -3.94998721409268E241

    const/16 v8, 0x9

    const/16 v7, 0x20

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p3}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v0, -0xde84e0bc4301711L    # -3.94998721409268E241

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditor;->getKeyStrokeDetector()Lcom/aide/common/KeyStrokeDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/common/KeyStrokeDetector;->DW()V

    if-eqz p3, :cond_1

    invoke-direct {p0, p1}, Lcom/aide/ui/AIDEEditor$a;->QX(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-static {v0}, Lcom/aide/ui/AIDEEditor;->J8(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-eq v0, p1, :cond_1

    move p2, v6

    :cond_1
    invoke-virtual {p0, p1}, Lcom/aide/ui/AIDEEditor$a;->J8(I)I

    move-result v0

    if-eq v0, p2, :cond_2

    if-gez p2, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    add-int/lit8 p1, p1, -0x1

    move v0, v6

    :goto_1
    invoke-virtual {p0, p1}, Lcom/aide/ui/views/editor/g;->EQ(I)I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p0, v0, p1}, Lcom/aide/ui/views/editor/g;->FH(II)C

    move-result v1

    if-eq v1, v8, :cond_5

    if-eq v1, v7, :cond_5

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0, p0}, Lcom/aide/ui/views/editor/g;->j6(IIILjava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditText;->we()Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_2
    if-ge v6, p2, :cond_8

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditText;->getTabSize()I

    move-result v0

    div-int v2, p2, v0

    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditText;->getTabSize()I

    move-result v3

    move v0, v6

    :goto_3
    if-ge v0, v2, :cond_7

    const/16 v4, 0x9

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    rem-int v0, p2, v3

    if-ge v6, v0, :cond_8

    const/16 v0, 0x20

    :try_start_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_8
    :try_start_2
    new-instance v0, Ljava/io/StringReader;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0, p0}, Lcom/aide/ui/views/editor/g;->j6(IILjava/io/Reader;Ljava/lang/Object;)Labcd/fm;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v0, :cond_9

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    move-wide v2, v10

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_9
    throw v1
.end method

.method public j6(IZ)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x2d8e05bed66e3cd1L
    .end annotation

    const-wide v2, -0x155eed9b4a566278L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v4, -0x155eed9b4a566278L

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->cb:Labcd/em;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->cb:Labcd/em;

    invoke-virtual {v0}, Labcd/em;->DW()Labcd/fm;

    move-result-object v0

    move-object v1, v0

    :goto_1
    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->cb:Labcd/em;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1}, Labcd/fm;->DW()I

    move-result v5

    invoke-virtual {v1}, Labcd/fm;->j6()I

    move-result v6

    invoke-virtual {v0, v4, v5, v6}, Labcd/em;->j6(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Labcd/fm;->DW()I

    move-result v4

    const/4 v0, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1}, Labcd/fm;->j6()I

    move-result v1

    iget-object v5, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v5}, Lcom/aide/ui/views/CodeEditText;->getScrollView()Lcom/aide/ui/views/CodeEditTextScrollView;

    move-result-object v5

    const/16 v6, 0x14

    if-lt v4, v6, :cond_2

    iget-object v6, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/aide/common/g;->J0(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_2
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v5, v4, v1, p2, v0}, Lcom/aide/ui/views/CodeEditTextScrollView;->j6(IIZZ)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->cb:Labcd/em;

    invoke-virtual {v0, v1}, Labcd/em;->j6(Labcd/fm;)Labcd/fm;
    :try_end_1
    .catch Labcd/bm; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :catch_1
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v0, :cond_4

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1
.end method

.method public j6(Lcom/aide/engine/I;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x3e60fa981f1b6f54L
    .end annotation

    const-wide v4, 0x17c184a46b6564e7L    # 2.999719494815177E-194

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x17c184a46b6564e7L    # 2.999719494815177E-194

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p1, Lcom/aide/engine/I;->FH:[C

    invoke-virtual {p0, v0}, Lcom/aide/ui/views/editor/g;->j6([C)Lcom/aide/ui/views/editor/g$e;

    move-result-object v0

    iget-wide v2, v0, Lcom/aide/ui/views/editor/g$e;->v5:J

    iput-wide v2, p1, Lcom/aide/engine/I;->v5:J

    iget-object v1, v0, Lcom/aide/ui/views/editor/g$e;->FH:[C

    iput-object v1, p1, Lcom/aide/engine/I;->FH:[C

    iget v0, v0, Lcom/aide/ui/views/editor/g$e;->Hw:I

    iput v0, p1, Lcom/aide/engine/I;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x62fac5401e7ed81L
    .end annotation

    const-wide v2, 0x71920a1e4be24cL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x71920a1e4be24cL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/AIDEEditor$a;->Sf:Ljava/lang/String;

    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditor;->cn()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public varargs j6(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x569cd7e52e4bf15L
    .end annotation

    const-wide v2, -0x5358d1f738e274a0L

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_0

    const-wide v4, -0x5358d1f738e274a0L

    invoke-static {v4, v5, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :try_start_1
    const-string v0, "\r\n"

    const-string v4, "\n"

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :try_start_2
    const-string v4, "$space$"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object p1

    :try_start_3
    array-length v4, p2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-object v0, p1

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v5, p2, v1

    :try_start_4
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v0

    :try_start_5
    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4, p0}, Lcom/aide/ui/views/editor/g;->j6(Ljava/io/Reader;Ljava/lang/Object;)V

    invoke-direct {p0, v0, p2}, Lcom/aide/ui/AIDEEditor$a;->DW(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor$a;->gn()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :goto_1
    :try_start_6
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor$a;->Ws()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Labcd/FileSystemUtils;->gn(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/aide/ui/AIDEEditor$a;->sG:J

    iget-object v1, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-static {v1}, Lcom/aide/ui/AIDEEditor;->Zo(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/aide/ui/views/editor/OConsole;->v5(II)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    return-void

    :catch_0
    move-exception v1

    move-object v5, p1

    :goto_2
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v0, :cond_3

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1

    :catch_1
    move-exception v0

    move-object v0, p1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    move-object v5, v0

    goto :goto_2
.end method

.method public tp(II)I
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x7302b91f7b9b1600L
    .end annotation

    const-wide v2, 0x103e97ed010cf723L    # 1.970570281747513E-230

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0x103e97ed010cf723L    # 1.970570281747513E-230

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/aide/ui/AIDEEditor$a;->XL(II)Lcom/aide/engine/SyntaxError;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/aide/engine/SyntaxError;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v0, :cond_2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public tp(I)Z
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x1ff718bbb54921c9L
    .end annotation

    const-wide v4, -0xbde21a7ed0ec08cL    # -2.558675770000962E251

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xbde21a7ed0ec08cL    # -2.558675770000962E251

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->gn()Lcom/aide/ui/debugger/Debugger;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/ui/AIDEEditor$a;->Sf:Ljava/lang/String;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/aide/ui/debugger/Debugger;->j6(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public v5(II)Z
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x1e40bbfe52624cdL
    .end annotation

    const-wide v2, -0x1584e7ee9853c298L    # -8.494746927209588E204

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v6, -0x1584e7ee9853c298L    # -8.494746927209588E204

    invoke-static {v6, v7, p0, v0, v4}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->sh:Labcd/em;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {v0, p2, p1}, Labcd/em;->FH(II)Z

    move-result v4

    if-nez v4, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p2, p1}, Labcd/em;->j6(II)Ljava/util/Enumeration;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/engine/SyntaxError;

    invoke-virtual {v0}, Lcom/aide/engine/SyntaxError;->Zo()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v0, :cond_5

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    throw v1
.end method

.method public vy()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x902520e489b6f30L
    .end annotation

    const-wide v4, 0x717c382b2459bc71L    # 4.5939311961830326E238

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x717c382b2459bc71L    # 4.5939311961830326E238

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/aide/ui/AIDEEditor$a;->KD:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/aide/ui/AIDEEditor$a;->KD:I

    iget v1, p0, Lcom/aide/ui/AIDEEditor$a;->ro:I

    iget v2, p0, Lcom/aide/ui/AIDEEditor$a;->cn:I

    invoke-virtual {p0, v1, v0, v2, v0}, Lcom/aide/ui/views/editor/b;->j6(IIII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public we()Z
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x36211ea80a4bf940L
    .end annotation

    const-wide v4, 0x4e05f8d0eb7a7921L    # 7.40452841225204E67

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4e05f8d0eb7a7921L    # 7.40452841225204E67

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-wide v0, p0, Lcom/aide/ui/AIDEEditor$a;->sG:J

    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor$a;->Ws()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Labcd/FileSystemUtils;->gn(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Labcd/FileSystemUtils;->j6(JJ)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public we(II)Z
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x14b8e26170ce0c5dL
    .end annotation

    const-wide v2, -0x8add935b49a880L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x8add935b49a880L

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/aide/ui/AIDEEditor$a;->KD:I

    if-ne p2, v0, :cond_1

    iget v0, p0, Lcom/aide/ui/AIDEEditor$a;->ro:I

    if-lt p1, v0, :cond_1

    iget v0, p0, Lcom/aide/ui/AIDEEditor$a;->cn:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-gt p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v0, :cond_2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method
