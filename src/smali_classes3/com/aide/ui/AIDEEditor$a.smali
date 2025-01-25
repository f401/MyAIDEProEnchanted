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
            "Lem<",
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
            "Lem<",
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
            "Lem<",
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
    .registers 3

    const-class v0, Lcom/aide/ui/AIDEEditor$a;

    const-wide v1, -0x1cfb6d6a69ea43fL  # -6.81654732287768E299

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/AIDEEditor;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x1c770930fd7ab97L
    .end annotation

    const-wide v0, 0x2d9cea1efbdbf8c5L  # 5.677766246953322E-89

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-direct {p0, p1}, Lcom/aide/ui/views/CodeEditText$b;-><init>(Lcom/aide/ui/views/CodeEditText;)V

    const/4 v3, -0x1

    iput v3, p0, Lcom/aide/ui/AIDEEditor$a;->KD:I

    invoke-direct {p0, v2}, Lcom/aide/ui/AIDEEditor$a;->DW(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v4, :cond_21

    invoke-static {v3, v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    throw v3
.end method

.method public constructor <init>(Lcom/aide/ui/AIDEEditor;Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x6fc055c4c07f6c9L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x24342c509021609bL

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
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
    :try_end_29
    .catchall {:try_start_0 .. :try_end_29} :catchall_2a

    return-void

    :catchall_2a
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v1, :cond_3b

    const-wide v2, 0x24342c509021609bL

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3b
    throw v0
.end method

.method static synthetic DW(Lcom/aide/ui/AIDEEditor$a;)Labcd/em;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/AIDEEditor$a;->cb:Labcd/em;

    return-object p0
.end method

.method private DW(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x9ddc55516e58b9L
    .end annotation

    const-wide v0, -0x6842b34771ec3260L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iput-object p1, p0, Lcom/aide/ui/AIDEEditor$a;->Sf:Ljava/lang/String;

    if-eqz p1, :cond_1a

    invoke-static {}, Lcom/aide/ui/U;->FH()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/aide/engine/service/x;->j6(Ljava/lang/String;Ljava/util/List;)Labcd/la;

    move-result-object v2

    iput-object v2, p0, Lcom/aide/ui/AIDEEditor$a;->ef:Labcd/la;

    :cond_1a
    new-instance v2, Lcom/aide/ui/AIDEEditor$a$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/aide/ui/AIDEEditor$a$a;-><init>(Lcom/aide/ui/AIDEEditor$a;Lcom/aide/ui/u;)V

    invoke-virtual {p0, v2}, Lcom/aide/ui/views/editor/b;->j6(Lcom/aide/ui/views/editor/p;)V

    new-instance v2, Lcom/aide/ui/D;

    invoke-direct {v2, p0}, Lcom/aide/ui/D;-><init>(Lcom/aide/ui/AIDEEditor$a;)V

    invoke-virtual {p0, v2}, Lcom/aide/ui/views/editor/b;->j6(Lcom/aide/ui/views/editor/p;)V

    new-instance v2, Lcom/aide/ui/E;

    invoke-direct {v2, p0}, Lcom/aide/ui/E;-><init>(Lcom/aide/ui/AIDEEditor$a;)V

    invoke-virtual {p0, v2}, Lcom/aide/ui/views/editor/g;->j6(Lcom/aide/ui/views/editor/g$d;)V

    new-instance v2, Lcom/aide/ui/F;

    invoke-direct {v2, p0}, Lcom/aide/ui/F;-><init>(Lcom/aide/ui/AIDEEditor$a;)V

    invoke-virtual {p0, v2}, Lcom/aide/ui/views/editor/g;->j6(Lcom/aide/ui/views/editor/g$f;)V
    :try_end_3b
    .catchall {:try_start_5 .. :try_end_3b} :catchall_3c

    return-void

    :catchall_3c
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v3, :cond_44

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_44
    throw v2
.end method

.method private varargs DW(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 13
    .annotation runtime Labcd/su;
        method = 0x115b13857298d3e8L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x156350ea77c20b9L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v0, Labcd/em;

    invoke-direct {v0}, Labcd/em;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->cb:Labcd/em;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1b
    array-length v3, v0
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_64

    if-ge v2, v3, :cond_63

    aget-object v3, v0, v2

    const/4 v4, 0x0

    :goto_21
    :try_start_21
    array-length v5, p2
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_64

    if-ge v4, v5, :cond_60

    aget-object v5, p2, v4

    :try_start_26
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5d

    move-object v7, v3

    const/4 v6, 0x0

    :goto_2e
    array-length v8, p2

    if-ge v6, v8, :cond_46

    if-eq v4, v6, :cond_43

    aget-object v8, p2, v6

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_43

    aget-object v8, p2, v6

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    :cond_43
    add-int/lit8 v6, v6, 0x1

    goto :goto_2e

    :cond_46
    invoke-virtual {v7, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_5d

    iget-object v6, p0, Lcom/aide/ui/AIDEEditor$a;->cb:Labcd/em;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    add-int/lit8 v8, v2, 0x1

    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v6, v7, v8, v5}, Labcd/em;->DW(Ljava/lang/Object;II)V
    :try_end_5d
    .catchall {:try_start_26 .. :try_end_5d} :catchall_64

    :cond_5d
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    :cond_60
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_63
    return-void

    :catchall_64
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v1, :cond_75

    const-wide v2, -0x156350ea77c20b9L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_75
    goto :goto_77

    :goto_76
    throw v0

    :goto_77
    goto :goto_76
.end method

.method static synthetic FH(Lcom/aide/ui/AIDEEditor$a;)Labcd/em;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/AIDEEditor$a;->dx:Labcd/em;

    return-object p0
.end method

.method private Hw(IIII)Ljava/lang/String;
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x9400bb0129d7200L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_21

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x247250b2b360ca37L  # 4.031755853177983E-133

    move-object v3, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    new-instance v0, Labcd/hm;

    add-int/lit8 v1, p1, -0x1

    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v3, p3, -0x1

    add-int/lit8 v4, p4, -0x2

    invoke-direct {v0, v1, v2, v3, v4}, Labcd/hm;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/aide/ui/views/editor/g;->DW(Labcd/hm;)Ljava/io/Reader;

    move-result-object v0

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V
    :try_end_37
    .catchall {:try_start_0 .. :try_end_37} :catchall_43

    :try_start_37
    invoke-static {v0, v1}, Lcom/aide/common/Xa;->j6(Ljava/io/Reader;Ljava/io/Writer;)V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3e} :catch_3f
    .catchall {:try_start_37 .. :try_end_3e} :catchall_43

    goto :goto_42

    :catch_3f
    move-exception p1

    const-string p1, ""

    :goto_42
    return-object p1

    :catchall_43
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v1, :cond_66

    const-wide v2, 0x247250b2b360ca37L  # 4.031755853177983E-133

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_66
    throw v0
.end method

.method static synthetic Hw(Lcom/aide/ui/AIDEEditor$a;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor$a;->SI()V

    return-void
.end method

.method private KD()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xb078e3bae8bd2a1L
    .end annotation

    const-wide v0, -0x1eca4043df8f7e18L  # -1.9110686653857924E160

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    const-string v3, "TarinerHintMaps"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor$a;->Ws()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/aide/ui/AIDEEditor$a;->cb:Labcd/em;

    invoke-static {v4}, Lcom/aide/common/wa;->j6(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_2c

    return-void

    :catchall_2c
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v3, :cond_34

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_34
    throw v2
.end method

.method private QX(I)Z
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x5fe3bbb06663a4fL
    .end annotation

    const-wide v0, -0xe8a02e6b67df180L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    add-int/lit8 p1, p1, -0x1

    const/4 v2, 0x0

    if-gez p1, :cond_12

    return v2

    :cond_12
    const/4 v3, 0x0

    :goto_13
    invoke-virtual {p0, p1}, Lcom/aide/ui/views/editor/g;->EQ(I)I

    move-result v4

    if-ge v3, v4, :cond_29

    invoke-virtual {p0, v3, p1}, Lcom/aide/ui/views/editor/g;->FH(II)C

    move-result v4
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_2b

    const/16 v5, 0x9

    if-eq v4, v5, :cond_26

    const/16 v5, 0x20

    if-eq v4, v5, :cond_26

    return v2

    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_29
    const/4 p1, 0x1

    return p1

    :catchall_2b
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v3, :cond_38

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_38
    goto :goto_3a

    :goto_39
    throw v2

    :goto_3a
    goto :goto_39
.end method

.method private SI()V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x2a0ac1f3b8f5affcL
    .end annotation

    const-wide v0, -0x7c75c84d077ac07L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/AIDEEditor$a;->dx:Labcd/em;

    if-eqz v2, :cond_56

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_57

    :try_start_15
    iget-object v3, p0, Lcom/aide/ui/AIDEEditor$a;->dx:Labcd/em;

    invoke-virtual {v3}, Labcd/em;->DW()Labcd/fm;

    move-result-object v3

    :goto_1b
    iget-object v4, p0, Lcom/aide/ui/AIDEEditor$a;->dx:Labcd/em;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3}, Labcd/fm;->DW()I

    move-result v7

    invoke-virtual {v3}, Labcd/fm;->j6()I

    move-result v8

    invoke-virtual {v4, v6, v7, v8}, Labcd/em;->j6(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-virtual {v3}, Labcd/fm;->DW()I

    move-result v4

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3c
    iget-object v4, p0, Lcom/aide/ui/AIDEEditor$a;->dx:Labcd/em;

    invoke-virtual {v4, v3}, Labcd/em;->j6(Labcd/fm;)Labcd/fm;

    move-result-object v3
    :try_end_42
    .catch Labcd/bm; {:try_start_15 .. :try_end_42} :catch_43
    .catchall {:try_start_15 .. :try_end_42} :catchall_57

    goto :goto_1b

    :catch_43
    move-exception v3

    :try_start_44
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_4d

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/aide/ui/AIDEEditor$a;->dx:Labcd/em;

    :cond_4d
    invoke-static {}, Lcom/aide/ui/U;->gn()Lcom/aide/ui/debugger/Debugger;

    move-result-object v3

    iget-object v4, p0, Lcom/aide/ui/AIDEEditor$a;->Sf:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/aide/ui/debugger/Debugger;->j6(Ljava/lang/String;Ljava/util/List;)V
    :try_end_56
    .catchall {:try_start_44 .. :try_end_56} :catchall_57

    :cond_56
    return-void

    :catchall_57
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v3, :cond_5f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_5f
    goto :goto_61

    :goto_60
    throw v2

    :goto_61
    goto :goto_60
.end method

.method private XL(I)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x29467a1762e4ee65L
    .end annotation

    const-wide v0, -0x2efa82bf488008L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/AIDEEditor$a;->dx:Labcd/em;

    if-nez v2, :cond_17

    new-instance v2, Labcd/em;

    invoke-direct {v2}, Labcd/em;-><init>()V

    iput-object v2, p0, Lcom/aide/ui/AIDEEditor$a;->dx:Labcd/em;

    :cond_17
    iget-object v2, p0, Lcom/aide/ui/AIDEEditor$a;->dx:Labcd/em;

    add-int/lit8 v3, p1, -0x1

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5}, Labcd/em;->DW(Ljava/lang/Object;II)V

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor$a;->SI()V

    invoke-virtual {p0, v5, v3, v5, p1}, Lcom/aide/ui/views/editor/b;->j6(IIII)V
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_2b

    return-void

    :catchall_2b
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v3, :cond_38

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_38
    throw v2
.end method

.method static synthetic j6(Lcom/aide/ui/AIDEEditor$a;)Labcd/em;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/AIDEEditor$a;->sh:Labcd/em;

    return-object p0
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
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x20cb02fa7b88eb90L
    .end annotation

    const-wide v0, 0x6cf9b1fbf54bed3L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    const-string v3, "TarinerHintMaps"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor$a;->Ws()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/aide/common/wa;->j6(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/em;

    iput-object v2, p0, Lcom/aide/ui/AIDEEditor$a;->cb:Labcd/em;
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_29

    return-void

    :catchall_29
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v3, :cond_31

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_31
    throw v2
.end method

.method static synthetic v5(Lcom/aide/ui/AIDEEditor$a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/AIDEEditor$a;->Sf:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public DW(CII)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x26ca75fbd8ebbbadL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_1c

    new-instance v4, Ljava/lang/Character;

    invoke-direct {v4, p1}, Ljava/lang/Character;-><init>(C)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x494ab8ec3614e20L  # 1.35746207422708E-286

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor$a;->Ws()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".java"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a6

    const-string v1, ".js"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a6

    const-string v1, ".c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a6

    const-string v1, ".cpp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a6

    const-string v1, ".h"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a6

    const-string v1, ".cc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a6

    const-string v1, ".hh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a6

    const-string v1, ".hpp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a6

    const-string v1, ".gradle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6d

    goto :goto_a6

    :cond_6d
    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9b

    const-string v1, ".html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9b

    const-string v1, ".htm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_86

    goto :goto_9b

    :cond_86
    const-string v1, ".css"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    add-int/lit8 v1, p2, 0x1

    add-int/lit8 v3, p3, 0x1

    invoke-static {v0, p1, v1, v3}, Labcd/El;->j6(Lcom/aide/ui/AIDEEditor;CII)Z

    move-result v0

    goto :goto_b0

    :cond_99
    const/4 v0, 0x0

    goto :goto_b2

    :cond_9b
    :goto_9b
    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    add-int/lit8 v1, p2, 0x1

    add-int/lit8 v3, p3, 0x1

    invoke-static {v0, p1, v1, v3}, Labcd/Gl;->j6(Lcom/aide/ui/AIDEEditor;CII)Z

    move-result v0

    goto :goto_b0

    :cond_a6
    :goto_a6
    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    add-int/lit8 v1, p2, 0x1

    add-int/lit8 v3, p3, 0x1

    invoke-static {v0, p1, v1, v3}, Labcd/Fl;->j6(Lcom/aide/ui/AIDEEditor;CII)Z

    move-result v0

    :goto_b0
    xor-int/lit8 v0, v0, 0x1

    :goto_b2
    if-eqz v0, :cond_f4

    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->ef:Labcd/la;

    if-eqz v0, :cond_f4

    invoke-interface {v0}, Labcd/la;->v5()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/na;

    invoke-interface {v1, p1}, Labcd/na;->j6(C)Z

    move-result v1

    if-eqz v1, :cond_c0

    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v1

    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, 0x1

    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditText;->getTabSize()I

    move-result v6

    move v5, p1

    invoke-virtual/range {v1 .. v6}, Labcd/Xj;->j6(Ljava/lang/String;IICI)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_f4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_f4

    invoke-static {}, Lcom/aide/ui/U;->P8()Labcd/ol;

    move-result-object v1

    invoke-virtual {v1, v0}, Labcd/ol;->j6(Ljava/util/List;)V
    :try_end_f4
    .catchall {:try_start_0 .. :try_end_f4} :catchall_f5

    :cond_f4
    return-void

    :catchall_f5
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v1, :cond_113

    const-wide v2, 0x494ab8ec3614e20L  # 1.35746207422708E-286

    new-instance v5, Ljava/lang/Character;

    invoke-direct {v5, p1}, Ljava/lang/Character;-><init>(C)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_113
    goto :goto_115

    :goto_114
    throw v0

    :goto_115
    goto :goto_114
.end method

.method public DW(III)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x3417cce7aba954ecL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_1c

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x1bd40767f436f52bL

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    iget v0, p0, Lcom/aide/ui/AIDEEditor$a;->KD:I

    if-ne p1, v0, :cond_29

    iget v1, p0, Lcom/aide/ui/AIDEEditor$a;->ro:I

    if-ne p2, v1, :cond_29

    iget v1, p0, Lcom/aide/ui/AIDEEditor$a;->cn:I

    if-ne p3, v1, :cond_29

    return-void

    :cond_29
    iget v1, p0, Lcom/aide/ui/AIDEEditor$a;->ro:I

    iget v2, p0, Lcom/aide/ui/AIDEEditor$a;->cn:I

    iput p2, p0, Lcom/aide/ui/AIDEEditor$a;->ro:I

    iput p3, p0, Lcom/aide/ui/AIDEEditor$a;->cn:I

    iput p1, p0, Lcom/aide/ui/AIDEEditor$a;->KD:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_39

    invoke-virtual {p0, v1, v0, v2, v0}, Lcom/aide/ui/views/editor/b;->j6(IIII)V

    :cond_39
    iget v0, p0, Lcom/aide/ui/AIDEEditor$a;->ro:I

    iget v1, p0, Lcom/aide/ui/AIDEEditor$a;->KD:I

    iget v2, p0, Lcom/aide/ui/AIDEEditor$a;->cn:I

    invoke-virtual {p0, v0, v1, v2, v1}, Lcom/aide/ui/views/editor/b;->j6(IIII)V
    :try_end_42
    .catchall {:try_start_0 .. :try_end_42} :catchall_43

    return-void

    :catchall_43
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v1, :cond_61

    const-wide v2, 0x1bd40767f436f52bL

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_61
    throw v0
.end method

.method public DW(IIIIII)V
    .registers 16
    .annotation runtime Labcd/su;
        method = -0xcd896e8d966d141L
    .end annotation

    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_3f

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p5}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p6}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-wide v1, 0x25189c49e137b10L

    invoke-static {v1, v2, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_3f
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aide/ui/AIDEEditor$a;->Hw(IIII)Ljava/lang/String;

    move-result-object v8

    move-object v3, p0

    move v4, p5

    move v5, p6

    move v6, p5

    move v7, p6

    invoke-virtual/range {v3 .. v8}, Lcom/aide/ui/views/CodeEditText$a;->j6(IIIILjava/lang/String;)V

    return-void
.end method

.method public DW(Ljava/util/List;)V
    .registers 9
    .annotation runtime Labcd/su;
        method = -0xa9cb84b35b952cbL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-wide v0, -0x2e078bec0779fe60L  # -7.600786759196841E86

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_39

    new-instance v2, Labcd/em;

    invoke-direct {v2}, Labcd/em;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int/2addr v6, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v5, v6, v4}, Labcd/em;->DW(Ljava/lang/Object;II)V

    goto :goto_1b

    :cond_36
    :goto_36
    iput-object v2, p0, Lcom/aide/ui/AIDEEditor$a;->dx:Labcd/em;

    goto :goto_43

    :cond_39
    iget-object v2, p0, Lcom/aide/ui/AIDEEditor$a;->dx:Labcd/em;

    if-eqz v2, :cond_43

    new-instance v2, Labcd/em;

    invoke-direct {v2}, Labcd/em;-><init>()V
    :try_end_42
    .catchall {:try_start_5 .. :try_end_42} :catchall_44

    goto :goto_36

    :cond_43
    :goto_43
    return-void

    :catchall_44
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v3, :cond_4c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4c
    goto :goto_4e

    :goto_4d
    throw v2

    :goto_4e
    goto :goto_4d
.end method

.method public DW(II)Z
    .registers 10
    .annotation runtime Labcd/su;
        method = -0xc68e225c56a032dL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x34f3c39e6f2531d0L  # 1.2896700666600553E-53

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->sh:Labcd/em;

    const/4 v1, 0x0

    if-nez v0, :cond_1c

    return v1

    :cond_1c
    invoke-virtual {v0, p2, p1}, Labcd/em;->FH(II)Z

    move-result v2

    if-nez v2, :cond_23

    return v1

    :cond_23
    invoke-virtual {v0, p2, p1}, Labcd/em;->j6(II)Ljava/util/Enumeration;

    move-result-object v0

    :cond_27
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/engine/SyntaxError;

    invoke-virtual {v2}, Lcom/aide/engine/SyntaxError;->Hw()Z

    move-result v2
    :try_end_37
    .catchall {:try_start_0 .. :try_end_37} :catchall_3c

    if-eqz v2, :cond_27

    const/4 p1, 0x1

    return p1

    :cond_3b
    return v1

    :catchall_3c
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v1, :cond_55

    const-wide v2, 0x34f3c39e6f2531d0L  # 1.2896700666600553E-53

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_55
    goto :goto_57

    :goto_56
    throw v0

    :goto_57
    goto :goto_56
.end method

.method public FH(Ljava/util/List;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x36d0580af23c0045L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aide/engine/SyntaxError;",
            ">;)V"
        }
    .end annotation

    const-wide v0, -0x1eb2468964141d90L  # -5.223742597114046E160

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Labcd/em;

    invoke-direct {v2}, Labcd/em;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move v9, v3

    :goto_18
    if-ltz v9, :cond_4d

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/engine/SyntaxError;

    iget v3, v3, Lcom/aide/engine/SyntaxError;->v5:I

    add-int/lit8 v5, v3, -0x1

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/engine/SyntaxError;

    iget v3, v3, Lcom/aide/engine/SyntaxError;->Zo:I

    add-int/lit8 v6, v3, -0x1

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/engine/SyntaxError;

    iget v3, v3, Lcom/aide/engine/SyntaxError;->VH:I

    add-int/lit8 v7, v3, -0x1

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/engine/SyntaxError;

    iget v3, v3, Lcom/aide/engine/SyntaxError;->gn:I

    add-int/lit8 v8, v3, -0x2

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Labcd/em;->j6(Ljava/lang/Object;IIII)V

    add-int/lit8 v9, v9, -0x1

    goto :goto_18

    :cond_4d
    iput-object v2, p0, Lcom/aide/ui/AIDEEditor$a;->sh:Labcd/em;

    iget-object v2, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    new-instance v3, Lcom/aide/ui/H;

    invoke-direct {v3, p0}, Lcom/aide/ui/H;-><init>(Lcom/aide/ui/AIDEEditor$a;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z
    :try_end_59
    .catchall {:try_start_5 .. :try_end_59} :catchall_5a

    return-void

    :catchall_5a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v3, :cond_62

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_62
    goto :goto_64

    :goto_63
    throw v2

    :goto_64
    goto :goto_63
.end method

.method public Hw()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x17c015ec8487375bL
    .end annotation

    const-wide v0, 0x1ff001c90d94a400L  # 7.461591670926185E-155

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/g;->er()Z

    move-result v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    return v0

    :catchall_11
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v3, :cond_19

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v2
.end method

.method public Hw(II)Z
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x9314bf0ab535b10L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x44ec8b381cb90e27L  # 1.0783552180530528E24

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->sh:Labcd/em;

    const/4 v1, 0x0

    if-nez v0, :cond_1c

    return v1

    :cond_1c
    invoke-virtual {v0, p2, p1}, Labcd/em;->FH(II)Z

    move-result v2

    if-nez v2, :cond_23

    return v1

    :cond_23
    invoke-virtual {v0, p2, p1}, Labcd/em;->j6(II)Ljava/util/Enumeration;

    move-result-object v0

    :cond_27
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/engine/SyntaxError;

    invoke-virtual {v2}, Lcom/aide/engine/SyntaxError;->FH()Z

    move-result v2
    :try_end_37
    .catchall {:try_start_0 .. :try_end_37} :catchall_3c

    if-eqz v2, :cond_27

    const/4 p1, 0x1

    return p1

    :cond_3b
    return v1

    :catchall_3c
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v1, :cond_55

    const-wide v2, 0x44ec8b381cb90e27L  # 1.0783552180530528E24

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_55
    goto :goto_57

    :goto_56
    throw v0

    :goto_57
    goto :goto_56
.end method

.method public J0()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x32479e71ce8624b0L
    .end annotation

    const-wide v0, -0xebdd3bd78349fefL  # -3.698031432121388E237

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/g;->a8()Z

    move-result v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    return v0

    :catchall_11
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v3, :cond_19

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v2
.end method

.method public J8(I)I
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x12303ff27be41c0L
    .end annotation

    const-wide v0, 0x410094bac855293dL  # 135831.34781868188

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    add-int/lit8 p1, p1, -0x1

    const/4 v2, 0x0

    if-gez p1, :cond_12

    return v2

    :cond_12
    const/4 v3, 0x0

    :goto_13
    invoke-virtual {p0, p1}, Lcom/aide/ui/views/editor/g;->EQ(I)I

    move-result v4

    if-ge v2, v4, :cond_36

    invoke-virtual {p0, v2, p1}, Lcom/aide/ui/views/editor/g;->FH(II)C

    move-result v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_29

    const/16 v5, 0x20

    if-eq v4, v5, :cond_26

    return v3

    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    :cond_29
    iget-object v4, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v4}, Lcom/aide/ui/views/CodeEditText;->getTabSize()I

    move-result v4

    add-int/2addr v3, v4

    div-int/2addr v3, v4
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_37

    mul-int v3, v3, v4

    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_36
    return v3

    :catchall_37
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v3, :cond_44

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_44
    goto :goto_46

    :goto_45
    throw v2

    :goto_46
    goto :goto_45
.end method

.method public J8(II)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x70fee001bfb1a9c0L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x190353a527d57659L  # -1.247597231167751E188

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v0

    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor$a;->Ws()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    add-int/lit8 v3, p2, 0x1

    iget-object v4, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v4}, Lcom/aide/ui/views/CodeEditText;->getTabSize()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Labcd/Xj;->DW(Ljava/lang/String;III)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/U;->P8()Labcd/ol;

    move-result-object v1

    invoke-virtual {v1, v0}, Labcd/ol;->j6(Ljava/util/List;)V
    :try_end_33
    .catchall {:try_start_0 .. :try_end_33} :catchall_34

    return-void

    :catchall_34
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v1, :cond_4d

    const-wide v2, -0x190353a527d57659L  # -1.247597231167751E188

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4d
    throw v0
.end method

.method public QX(II)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x41dce16c1de02e0L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x1037fc5071fbadb3L

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor$a;->Ws()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    add-int/lit8 v3, p2, 0x1

    iget-object v4, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v4}, Lcom/aide/ui/views/CodeEditText;->getTabSize()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Labcd/Xj;->Hw(Ljava/lang/String;III)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3b

    invoke-static {}, Lcom/aide/ui/U;->P8()Labcd/ol;

    move-result-object v1

    invoke-virtual {v1, v0}, Labcd/ol;->j6(Ljava/util/List;)V
    :try_end_3b
    .catchall {:try_start_0 .. :try_end_3b} :catchall_3c

    :cond_3b
    return-void

    :catchall_3c
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v1, :cond_55

    const-wide v2, 0x1037fc5071fbadb3L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_55
    throw v0
.end method

.method public VH()Ljava/util/List;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0xf604aa3952fd0b8L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide v0, 0x2c832af3b58e8b65L  # 2.8715951376148864E-94

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/io/BufferedReader;

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/b;->aM()Ljava/io/Reader;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_26

    :goto_1a
    :try_start_1a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_25

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_23} :catch_24
    .catchall {:try_start_1a .. :try_end_23} :catchall_26

    goto :goto_1a

    :catch_24
    move-exception v0

    :cond_25
    return-object v2

    :catchall_26
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v3, :cond_2e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2e
    goto :goto_30

    :goto_2f
    throw v2

    :goto_30
    goto :goto_2f
.end method

.method public VH(I)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x3e90f4f97dd74ef8L
    .end annotation

    const-wide v0, 0xeab2d2259b0f961L  # 5.216795982605563E-238

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/AIDEEditor$a;->dx:Labcd/em;

    if-eqz v2, :cond_18

    invoke-virtual {v2, p1}, Labcd/em;->j6(I)Z

    move-result p1
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_1a

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    return p1

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v3, :cond_27

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    throw v2
.end method

.method public Ws()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x48bc1272e7652c0L
    .end annotation

    const-wide v0, -0x1916f14adfb99039L  # -5.451351805856567E187

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->Sf:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public Ws(I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x22936cc7f137f6bbL
    .end annotation

    const-string v0, "debug-aide"

    const-wide v1, 0x4cddbc62915e59a0L  # 1.9113486114525157E62

    :try_start_7
    sget-boolean v3, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v3, :cond_e

    invoke-static {v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_e
    iget-object v3, p0, Lcom/aide/ui/AIDEEditor$a;->dx:Labcd/em;

    const/4 v4, 0x0

    if-eqz v3, :cond_2a

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v3, v5}, Labcd/em;->j6(I)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->dx:Labcd/em;

    const v3, 0x7fffffff

    invoke-virtual {v0, v5, v4, v5, v3}, Labcd/em;->j6(IIII)V

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor$a;->SI()V

    invoke-virtual {p0, v4, v5, v4, p1}, Lcom/aide/ui/views/editor/b;->j6(IIII)V

    goto :goto_67

    :cond_2a
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Zk;->EQ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_64

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v3

    iget-object v5, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d05ea

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v4

    const v0, 0x7f0d05e9

    invoke-virtual {v6, v0, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/aide/ui/G;

    invoke-direct {v4, p0, p1}, Lcom/aide/ui/G;-><init>(Lcom/aide/ui/AIDEEditor$a;I)V

    invoke-static {v3, v5, v0, v4}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_67

    :cond_64
    invoke-direct {p0, p1}, Lcom/aide/ui/AIDEEditor$a;->XL(I)V
    :try_end_67
    .catchall {:try_start_7 .. :try_end_67} :catchall_68

    :goto_67
    return-void

    :catchall_68
    move-exception v0

    sget-boolean v3, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v3, :cond_75

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v1, v2, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_75
    throw v0
.end method

.method public Ws(II)Z
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x2c65ef0dff4b9503L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x7bbc14a23d62500L

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor$a;->Ws()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".java"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_b0

    const-string v2, ".js"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b0

    const-string v2, ".c"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b0

    const-string v2, ".cpp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b0

    const-string v2, ".h"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b0

    const-string v2, ".cc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b0

    const-string v2, ".hh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b0

    const-string v2, ".hpp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b0

    const-string v2, ".gradle"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_69

    goto :goto_b0

    :cond_69
    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9e

    const-string v2, ".html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9e

    const-string v2, ".htm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_82

    goto :goto_9e

    :cond_82
    const-string v2, ".css"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9c

    iget-object v1, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    add-int/lit8 v2, p1, 0x1

    add-int/lit8 v5, p2, 0x1

    invoke-static {v1}, Lcom/aide/ui/AIDEEditor;->Ws(Lcom/aide/ui/AIDEEditor;)I

    move-result v6

    invoke-static {v1, v2, v5, v6}, Labcd/El;->j6(Lcom/aide/ui/AIDEEditor;III)Z

    move-result v1

    xor-int/2addr v1, v4

    if-nez v1, :cond_c2

    return v4

    :cond_9c
    const/4 v1, 0x0

    goto :goto_c2

    :cond_9e
    :goto_9e
    iget-object v1, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    add-int/lit8 v2, p1, 0x1

    add-int/lit8 v5, p2, 0x1

    invoke-static {v1}, Lcom/aide/ui/AIDEEditor;->Ws(Lcom/aide/ui/AIDEEditor;)I

    move-result v6

    invoke-static {v1, v2, v5, v6}, Labcd/Gl;->j6(Lcom/aide/ui/AIDEEditor;III)Z

    move-result v1

    xor-int/2addr v1, v4

    if-nez v1, :cond_c2

    return v4

    :cond_b0
    :goto_b0
    iget-object v1, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    add-int/lit8 v2, p1, 0x1

    add-int/lit8 v5, p2, 0x1

    invoke-static {v1}, Lcom/aide/ui/AIDEEditor;->Ws(Lcom/aide/ui/AIDEEditor;)I

    move-result v6

    invoke-static {v1, v2, v5, v6}, Labcd/Fl;->j6(Lcom/aide/ui/AIDEEditor;III)Z

    move-result v1

    xor-int/2addr v1, v4

    if-nez v1, :cond_c2

    return v4

    :cond_c2
    :goto_c2
    if-eqz v1, :cond_e6

    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    add-int/lit8 v5, p2, 0x1

    iget-object v6, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v6}, Lcom/aide/ui/views/CodeEditText;->getTabSize()I

    move-result v6

    invoke-virtual {v1, v0, v2, v5, v6}, Labcd/Xj;->FH(Ljava/lang/String;III)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_e6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_e6

    invoke-static {}, Lcom/aide/ui/U;->P8()Labcd/ol;

    move-result-object v1

    invoke-virtual {v1, v0}, Labcd/ol;->j6(Ljava/util/List;)V
    :try_end_e5
    .catchall {:try_start_0 .. :try_end_e5} :catchall_e7

    return v4

    :cond_e6
    return v3

    :catchall_e7
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v1, :cond_100

    const-wide v2, 0x7bbc14a23d62500L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_100
    throw v0
.end method

.method public XL(II)Lcom/aide/engine/SyntaxError;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x11f2bce63fa87c45L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x11b41edc2854fe90L  # 2.174317722969412E-223

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->sh:Labcd/em;

    const/4 v1, 0x0

    if-nez v0, :cond_1c

    return-object v1

    :cond_1c
    invoke-virtual {v0, p2, p1}, Labcd/em;->FH(II)Z

    move-result v2

    if-nez v2, :cond_23

    return-object v1

    :cond_23
    invoke-virtual {v0, p2, p1}, Labcd/em;->j6(II)Ljava/util/Enumeration;

    move-result-object v0

    :cond_27
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/engine/SyntaxError;

    invoke-virtual {v2}, Lcom/aide/engine/SyntaxError;->FH()Z

    move-result v3
    :try_end_37
    .catchall {:try_start_0 .. :try_end_37} :catchall_3b

    if-eqz v3, :cond_27

    return-object v2

    :cond_3a
    return-object v1

    :catchall_3b
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v1, :cond_54

    const-wide v2, 0x11b41edc2854fe90L  # 2.174317722969412E-223

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_54
    goto :goto_56

    :goto_55
    throw v0

    :goto_56
    goto :goto_55
.end method

.method public aM(II)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x9a7554350d63afL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x10356c4d9a9d9e84L

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/aide/ui/AIDEEditor$a;->j6(IIZ)V
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v1, :cond_34

    const-wide v2, -0x10356c4d9a9d9e84L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_34
    throw v0
.end method

.method public close()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x2a63387c9b11ecc9L
    .end annotation

    const-wide v0, 0x3e59a0f83106a10L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public getVersion()J
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1994be39db72e1e1L
    .end annotation

    const-wide v0, 0x65ff312084d7590L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/g;->U2()J

    move-result-wide v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    return-wide v0

    :catchall_11
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v3, :cond_19

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v2
.end method

.method public gn()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x1f33556b96bf8de0L
    .end annotation

    const-wide v0, 0x4b5db27c6d8d465L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_56

    :cond_c
    :try_start_c
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor$a;->Ws()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/b;->aM()Ljava/io/Reader;

    move-result-object v3

    invoke-static {v2, v3}, Labcd/FileSystemUtils;->j6(Ljava/lang/String;Ljava/io/Reader;)V

    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor$a;->Ws()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Labcd/FileSystemUtils;->gn(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/aide/ui/AIDEEditor$a;->sG:J

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/g;->gW()V

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor$a;->KD()V

    invoke-static {}, Lcom/aide/ui/U;->tp()Labcd/Ji;

    move-result-object v2

    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor$a;->Ws()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Labcd/Ji;->v5(Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_32} :catch_33
    .catchall {:try_start_c .. :try_end_32} :catchall_56

    goto :goto_55

    :catch_33
    move-exception v2

    :try_start_34
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor$a;->Ws()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " could not be saved!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/s1243808733/util/Toasty;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_55
    .catchall {:try_start_34 .. :try_end_55} :catchall_56

    :goto_55
    return-void

    :catchall_56
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v3, :cond_5e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_5e
    throw v2
.end method

.method public j6()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x289f9c92a0b2d3d0L
    .end annotation

    const-wide v0, -0x1959312bf6773abfL  # -3.101223527985212E186

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-static {v2}, Lcom/aide/ui/AIDEEditor;->VH(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v2

    iget-object v3, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-static {v3}, Lcom/aide/ui/AIDEEditor;->gn(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/views/editor/OConsole;->getCaretColumn()I

    move-result v3

    iget-object v4, p0, Lcom/aide/ui/AIDEEditor$a;->cb:Labcd/em;
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_51

    const/4 v5, 0x0

    :try_start_23
    iput-object v5, p0, Lcom/aide/ui/AIDEEditor$a;->cb:Labcd/em;

    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor$a;->Ws()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Labcd/FileSystemUtils;->lg(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v5

    invoke-virtual {p0, v5, p0}, Lcom/aide/ui/views/editor/g;->j6(Ljava/io/Reader;Ljava/lang/Object;)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_30} :catch_35
    .catchall {:try_start_23 .. :try_end_30} :catchall_31

    goto :goto_36

    :catchall_31
    move-exception v2

    :try_start_32
    iput-object v4, p0, Lcom/aide/ui/AIDEEditor$a;->cb:Labcd/em;

    throw v2

    :catch_35
    move-exception v5

    :goto_36
    iput-object v4, p0, Lcom/aide/ui/AIDEEditor$a;->cb:Labcd/em;

    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor$a;->Ws()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Labcd/FileSystemUtils;->gn(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/aide/ui/AIDEEditor$a;->sG:J

    iget-object v4, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-static {v4}, Lcom/aide/ui/AIDEEditor;->u7(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lcom/aide/ui/views/editor/OConsole;->v5(II)V

    iget-object v2, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-static {v2}, Lcom/aide/ui/AIDEEditor;->tp(Lcom/aide/ui/AIDEEditor;)V
    :try_end_50
    .catchall {:try_start_32 .. :try_end_50} :catchall_51

    return-void

    :catchall_51
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v3, :cond_59

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_59
    throw v2
.end method

.method public j6(CII)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x95042045982516fL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_1c

    new-instance v4, Ljava/lang/Character;

    invoke-direct {v4, p1}, Ljava/lang/Character;-><init>(C)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x25be0ee470106478L  # 6.938161757310776E-127

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-static {v0}, Lcom/aide/ui/AIDEEditor;->aM(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/j;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    add-int/lit8 v2, p3, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/aide/ui/j;->j6(CII)V
    :try_end_29
    .catchall {:try_start_0 .. :try_end_29} :catchall_2a

    return-void

    :catchall_2a
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v1, :cond_48

    const-wide v2, 0x25be0ee470106478L  # 6.938161757310776E-127

    new-instance v5, Ljava/lang/Character;

    invoke-direct {v5, p1}, Ljava/lang/Character;-><init>(C)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_48
    throw v0
.end method

.method public j6(II)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x17c6e1dc6b9a930L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x1d813b1374e79569L  # -2.8350081624474165E166

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/aide/ui/AIDEEditor$a;->j6(IIZ)V
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v1, :cond_34

    const-wide v2, -0x1d813b1374e79569L  # -2.8350081624474165E166

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_34
    throw v0
.end method

.method public j6(IIIIII)V
    .registers 16
    .annotation runtime Labcd/su;
        method = -0x1901f16da3fbfef9L
    .end annotation

    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_3f

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p5}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p6}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-wide v1, -0x6fa5e07b437d80L

    invoke-static {v1, v2, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_3f
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aide/ui/AIDEEditor$a;->Hw(IIII)Ljava/lang/String;

    move-result-object v8

    const-string v5, ""

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/aide/ui/views/CodeEditText$a;->j6(IIIILjava/lang/String;)V

    move-object v3, p0

    move v4, p5

    move v5, p6

    move v6, p5

    move v7, p6

    invoke-virtual/range {v3 .. v8}, Lcom/aide/ui/views/CodeEditText$a;->j6(IIIILjava/lang/String;)V

    return-void
.end method

.method public j6(IIIILjava/lang/String;ZZ)V
    .registers 13
    .annotation runtime Labcd/su;
        method = 0x12912df3c29ae4e0L
    .end annotation

    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_42

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x3

    aput-object v2, v0, v3

    const/4 v2, 0x4

    aput-object p5, v0, v2

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p6}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p7}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v3, 0x6

    aput-object v2, v0, v3

    const-wide v2, -0x2a4e98b70810c8fbL  # -6.236688267479137E104

    invoke-static {v2, v3, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_42
    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditor;->getKeyStrokeDetector()Lcom/aide/common/KeyStrokeDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/common/KeyStrokeDetector;->DW()V

    if-nez p6, :cond_67

    if-eqz p7, :cond_67

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

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_68

    :cond_67
    const/4 v0, 0x0

    :goto_68
    invoke-virtual/range {p0 .. p5}, Lcom/aide/ui/views/CodeEditText$a;->j6(IIIILjava/lang/String;)V

    if-nez p6, :cond_78

    if-eqz p7, :cond_78

    iget-object p1, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-static {p1}, Lcom/aide/ui/AIDEEditor;->J0(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/views/CodeEditText$c;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lcom/aide/ui/views/editor/OConsole;->v5(II)V

    :cond_78
    return-void
.end method

.method public j6(IIZ)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x6521e703b984c188L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_1c

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p3}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, -0xde84e0bc4301711L  # -3.94998721409268E241

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditor;->getKeyStrokeDetector()Lcom/aide/common/KeyStrokeDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/common/KeyStrokeDetector;->DW()V

    const/4 v0, 0x0

    if-eqz p3, :cond_3d

    invoke-direct {p0, p1}, Lcom/aide/ui/AIDEEditor$a;->QX(I)Z

    move-result v1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-static {v1}, Lcom/aide/ui/AIDEEditor;->J8(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-eq v1, p1, :cond_3d

    const/4 p2, 0x0

    :cond_3d
    invoke-virtual {p0, p1}, Lcom/aide/ui/AIDEEditor$a;->J8(I)I

    move-result v1

    if-eq v1, p2, :cond_a8

    if-gez p2, :cond_46

    goto :goto_a8

    :cond_46
    add-int/lit8 p1, p1, -0x1

    const/4 v1, 0x0

    :goto_49
    invoke-virtual {p0, p1}, Lcom/aide/ui/views/editor/g;->EQ(I)I

    move-result v2

    const/16 v3, 0x9

    const/16 v4, 0x20

    if-ge v1, v2, :cond_5f

    invoke-virtual {p0, v1, p1}, Lcom/aide/ui/views/editor/g;->FH(II)C

    move-result v2

    if-eq v2, v3, :cond_5c

    if-eq v2, v4, :cond_5c

    goto :goto_5f

    :cond_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    :cond_5f
    :goto_5f
    invoke-virtual {p0, v0, p1, v1, p0}, Lcom/aide/ui/views/editor/g;->j6(IIILjava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditText;->we()Z

    move-result v2

    if-eqz v2, :cond_78

    const/4 v2, 0x0

    :goto_70
    if-ge v2, p2, :cond_9a

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_70

    :cond_78
    iget-object v2, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditText;->getTabSize()I

    move-result v2

    div-int v2, p2, v2

    iget-object v5, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v5}, Lcom/aide/ui/views/CodeEditText;->getTabSize()I

    move-result v5

    const/4 v6, 0x0

    :goto_87
    if-ge v6, v2, :cond_8f

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_8c
    .catchall {:try_start_0 .. :try_end_8c} :catchall_a9

    add-int/lit8 v6, v6, 0x1

    goto :goto_87

    :cond_8f
    const/4 v2, 0x0

    :goto_90
    rem-int v3, p2, v5

    if-ge v2, v3, :cond_9a

    :try_start_94
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_97
    .catchall {:try_start_94 .. :try_end_97} :catchall_a9

    add-int/lit8 v2, v2, 0x1

    goto :goto_90

    :cond_9a
    :try_start_9a
    new-instance v2, Ljava/io/StringReader;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1, v2, p0}, Lcom/aide/ui/views/editor/g;->j6(IILjava/io/Reader;Ljava/lang/Object;)Labcd/fm;
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_a6} :catch_a7
    .catchall {:try_start_9a .. :try_end_a6} :catchall_a9

    goto :goto_a8

    :catch_a7
    move-exception p1

    :cond_a8
    :goto_a8
    return-void

    :catchall_a9
    move-exception v0

    move-object v7, v0

    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v0, :cond_c8

    const-wide v1, -0xde84e0bc4301711L  # -3.94998721409268E241

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p3}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v7

    move-object v3, p0

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c8
    goto :goto_ca

    :goto_c9
    throw v7

    :goto_ca
    goto :goto_c9
.end method

.method public j6(IZ)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x2d8e05bed66e3cd1L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v2, -0x155eed9b4a566278L

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->cb:Labcd/em;
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_64

    if-nez v0, :cond_1b

    return-void

    :cond_1b
    :try_start_1b
    invoke-virtual {v0}, Labcd/em;->DW()Labcd/fm;

    move-result-object v0

    :goto_1f
    iget-object v1, p0, Lcom/aide/ui/AIDEEditor$a;->cb:Labcd/em;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Labcd/fm;->DW()I

    move-result v3

    invoke-virtual {v0}, Labcd/fm;->j6()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Labcd/em;->j6(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-virtual {v0}, Labcd/fm;->DW()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0}, Labcd/fm;->j6()I

    move-result v0

    iget-object v3, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v3}, Lcom/aide/ui/views/CodeEditText;->getScrollView()Lcom/aide/ui/views/CodeEditTextScrollView;

    move-result-object v3

    const/16 v4, 0x14

    if-lt v1, v4, :cond_55

    iget-object v4, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/aide/common/g;->J0(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_55

    const/4 v4, 0x1

    goto :goto_56

    :cond_55
    const/4 v4, 0x0

    :goto_56
    add-int/2addr v0, v2

    invoke-virtual {v3, v1, v0, p2, v4}, Lcom/aide/ui/views/CodeEditTextScrollView;->j6(IIZZ)V

    return-void

    :cond_5b
    iget-object v1, p0, Lcom/aide/ui/AIDEEditor$a;->cb:Labcd/em;

    invoke-virtual {v1, v0}, Labcd/em;->j6(Labcd/fm;)Labcd/fm;

    move-result-object v0
    :try_end_61
    .catch Labcd/bm; {:try_start_1b .. :try_end_61} :catch_62
    .catchall {:try_start_1b .. :try_end_61} :catchall_64

    goto :goto_1f

    :catch_62
    move-exception p1

    return-void

    :catchall_64
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v1, :cond_7d

    const-wide v2, -0x155eed9b4a566278L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7d
    goto :goto_7f

    :goto_7e
    throw v0

    :goto_7f
    goto :goto_7e
.end method

.method public j6(Lcom/aide/engine/I;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x3e60fa981f1b6f54L
    .end annotation

    const-wide v0, 0x17c184a46b6564e7L  # 2.999719494815177E-194

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p1, Lcom/aide/engine/I;->FH:[C

    invoke-virtual {p0, v2}, Lcom/aide/ui/views/editor/g;->j6([C)Lcom/aide/ui/views/editor/g$e;

    move-result-object v2

    iget-wide v3, v2, Lcom/aide/ui/views/editor/g$e;->v5:J

    iput-wide v3, p1, Lcom/aide/engine/I;->v5:J

    iget-object v3, v2, Lcom/aide/ui/views/editor/g$e;->FH:[C

    iput-object v3, p1, Lcom/aide/engine/I;->FH:[C

    iget v2, v2, Lcom/aide/ui/views/editor/g$e;->Hw:I

    iput v2, p1, Lcom/aide/engine/I;->Hw:I
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v3, :cond_27

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    throw v2
.end method

.method public j6(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x62fac5401e7ed81L
    .end annotation

    const-wide v0, 0x71920a1e4be24cL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iput-object p1, p0, Lcom/aide/ui/AIDEEditor$a;->Sf:Ljava/lang/String;

    iget-object v2, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditor;->cn()V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public varargs j6(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x569cd7e52e4bf15L
    .end annotation

    const-string v0, ""

    const-string v1, "\n"

    :try_start_4
    sget-boolean v2, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v2, :cond_10

    const-wide v2, -0x5358d1f738e274a0L

    invoke-static {v2, v3, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_73

    :cond_10
    const/4 v2, 0x0

    :try_start_11
    const-string v3, "\r\n"

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "$space$"

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    array-length v3, p2
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1e} :catch_5e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_73

    move-object v5, p1

    const/4 v4, 0x0

    :goto_20
    if-ge v4, v3, :cond_31

    aget-object v6, p2, v4

    :try_start_24
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2e

    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    :cond_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    :cond_31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, p0}, Lcom/aide/ui/views/editor/g;->j6(Ljava/io/Reader;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/aide/ui/AIDEEditor$a;->DW(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor$a;->gn()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_5d} :catch_5e
    .catchall {:try_start_24 .. :try_end_5d} :catchall_73

    goto :goto_5f

    :catch_5e
    move-exception v0

    :goto_5f
    :try_start_5f
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor$a;->Ws()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/FileSystemUtils;->gn(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aide/ui/AIDEEditor$a;->sG:J

    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-static {v0}, Lcom/aide/ui/AIDEEditor;->Zo(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/views/CodeEditText$c;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/aide/ui/views/editor/OConsole;->v5(II)V
    :try_end_72
    .catchall {:try_start_5f .. :try_end_72} :catchall_73

    return-void

    :catchall_73
    move-exception v0

    move-object v5, p1

    sget-boolean p1, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz p1, :cond_84

    const-wide v2, -0x5358d1f738e274a0L

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_84
    goto :goto_86

    :goto_85
    throw v0

    :goto_86
    goto :goto_85
.end method

.method public tp(II)I
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x7302b91f7b9b1600L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x103e97ed010cf723L  # 1.970570281747513E-230

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    invoke-virtual {p0, p1, p2}, Lcom/aide/ui/AIDEEditor$a;->XL(II)Lcom/aide/engine/SyntaxError;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget p1, v0, Lcom/aide/engine/SyntaxError;->Hw:I
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_21

    return p1

    :cond_1f
    const/4 p1, 0x0

    return p1

    :catchall_21
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v1, :cond_3a

    const-wide v2, 0x103e97ed010cf723L  # 1.970570281747513E-230

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3a
    throw v0
.end method

.method public tp(I)Z
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x1ff718bbb54921c9L
    .end annotation

    const-wide v0, -0xbde21a7ed0ec08cL  # -2.558675770000962E251

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->gn()Lcom/aide/ui/debugger/Debugger;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/AIDEEditor$a;->Sf:Ljava/lang/String;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/aide/ui/debugger/Debugger;->j6(Ljava/lang/String;I)Z

    move-result p1
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return p1

    :catchall_19
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v3, :cond_26

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v2
.end method

.method public v5(II)Z
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x1e40bbfe52624cdL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x1584e7ee9853c298L  # -8.494746927209588E204

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$a;->sh:Labcd/em;

    const/4 v1, 0x0

    if-nez v0, :cond_1c

    return v1

    :cond_1c
    invoke-virtual {v0, p2, p1}, Labcd/em;->FH(II)Z

    move-result v2

    if-nez v2, :cond_23

    return v1

    :cond_23
    invoke-virtual {v0, p2, p1}, Labcd/em;->j6(II)Ljava/util/Enumeration;

    move-result-object v0

    :cond_27
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/engine/SyntaxError;

    invoke-virtual {v2}, Lcom/aide/engine/SyntaxError;->Zo()Z

    move-result v2
    :try_end_37
    .catchall {:try_start_0 .. :try_end_37} :catchall_3c

    if-eqz v2, :cond_27

    const/4 p1, 0x1

    return p1

    :cond_3b
    return v1

    :catchall_3c
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v1, :cond_55

    const-wide v2, -0x1584e7ee9853c298L  # -8.494746927209588E204

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_55
    goto :goto_57

    :goto_56
    throw v0

    :goto_57
    goto :goto_56
.end method

.method public vy()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x902520e489b6f30L
    .end annotation

    const-wide v0, 0x717c382b2459bc71L  # 4.5939311961830326E238

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Lcom/aide/ui/AIDEEditor$a;->KD:I

    const/4 v3, -0x1

    iput v3, p0, Lcom/aide/ui/AIDEEditor$a;->KD:I

    iget v3, p0, Lcom/aide/ui/AIDEEditor$a;->ro:I

    iget v4, p0, Lcom/aide/ui/AIDEEditor$a;->cn:I

    invoke-virtual {p0, v3, v2, v4, v2}, Lcom/aide/ui/views/editor/b;->j6(IIII)V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method public we()Z
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x36211ea80a4bf940L
    .end annotation

    const-wide v0, 0x4e05f8d0eb7a7921L  # 7.40452841225204E67

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-wide v2, p0, Lcom/aide/ui/AIDEEditor$a;->sG:J

    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor$a;->Ws()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Labcd/FileSystemUtils;->gn(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Labcd/FileSystemUtils;->j6(JJ)Z

    move-result v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1d

    xor-int/lit8 v0, v0, 0x1

    return v0

    :catchall_1d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public we(II)Z
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x14b8e26170ce0c5dL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$a;->nw:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x8add935b49a880L

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    iget v0, p0, Lcom/aide/ui/AIDEEditor$a;->KD:I

    if-ne p2, v0, :cond_24

    iget v0, p0, Lcom/aide/ui/AIDEEditor$a;->ro:I

    if-lt p1, v0, :cond_24

    iget p2, p0, Lcom/aide/ui/AIDEEditor$a;->cn:I
    :try_end_20
    .catchall {:try_start_0 .. :try_end_20} :catchall_26

    if-gt p1, p2, :cond_24

    const/4 p1, 0x1

    goto :goto_25

    :cond_24
    const/4 p1, 0x0

    :goto_25
    return p1

    :catchall_26
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor$a;->SI:Z

    if-eqz v1, :cond_3f

    const-wide v2, -0x8add935b49a880L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3f
    throw v0
.end method
