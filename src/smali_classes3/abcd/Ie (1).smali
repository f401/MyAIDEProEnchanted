.class public Labcd/Ie;
.super Labcd/BaseProjectConfig;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LSi<",
        "Labcd/Ie;",
        ">;"
    }
.end annotation


# static fields
.field private static VH:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static Zo:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field public gn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Labcd/Be$g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/Ie;

    const-wide v1, -0x5c0420969a69a2a3L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x28fd01bed2b49388L

    :try_start_6
    sget-boolean v3, Labcd/Ie;->Zo:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Labcd/BaseProjectConfig;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Labcd/Ie;->gn:Ljava/util/List;
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v3

    sget-boolean v4, Labcd/Ie;->VH:Z

    if-eqz v4, :cond_20

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v3
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 13
    .annotation runtime Labcd/su;
        method = 0x45c1ecb0a8e9771L
    .end annotation

    const-string v0, "$"

    const/4 v1, 0x0

    const-wide v2, -0x17eb2361b8195b0L

    :try_start_8
    sget-boolean v4, Labcd/Ie;->Zo:Z

    if-eqz v4, :cond_f

    invoke-static {v2, v3, v1, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_f
    invoke-direct {p0}, Labcd/BaseProjectConfig;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Labcd/Ie;->gn:Ljava/util/List;
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_b4

    :try_start_19
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    const-string v4, "dependency"

    invoke-interface {v5, v4}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    const/4 v5, 0x0

    :goto_34
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_38} :catch_af
    .catchall {:try_start_19 .. :try_end_38} :catchall_b4

    if-ge v5, v6, :cond_b3

    :try_start_3a
    invoke-interface {v4, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    const-string v7, "groupId"

    invoke-direct {p0, v6, v7}, Labcd/Ie;->j6(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "artifactId"

    invoke-direct {p0, v6, v8}, Labcd/Ie;->j6(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "version"

    invoke-direct {p0, v6, v9}, Labcd/Ie;->j6(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "scope"

    invoke-direct {p0, v6, v10}, Labcd/Ie;->j6(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_ac

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_ac

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_ac

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_ac

    const-string v10, "test"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_ac

    const-string v10, "provided"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_ac

    const-string v10, "system"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_ac

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_94

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_92} :catch_a8
    .catchall {:try_start_3a .. :try_end_92} :catchall_b4

    if-eqz v6, :cond_96

    :cond_94
    const-string v9, "+"

    :cond_96
    :try_start_96
    new-instance v6, Labcd/Be$g;

    const/4 v10, 0x1

    invoke-direct {v6, v10}, Labcd/Be$g;-><init>(I)V

    iget-object v10, p0, Labcd/Ie;->gn:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v7, v6, Labcd/Be$g;->gn:Ljava/lang/String;

    iput-object v8, v6, Labcd/Be$g;->u7:Ljava/lang/String;

    iput-object v9, v6, Labcd/Be$g;->tp:Ljava/lang/String;
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_a7} :catch_a8
    .catchall {:try_start_96 .. :try_end_a7} :catchall_b4

    goto :goto_ac

    :catch_a8
    move-exception v6

    :try_start_a9
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_ac} :catch_af
    .catchall {:try_start_a9 .. :try_end_ac} :catchall_b4

    :cond_ac
    :goto_ac
    add-int/lit8 v5, v5, 0x1

    goto :goto_34

    :catch_af
    move-exception v0

    :try_start_b0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b3
    .catchall {:try_start_b0 .. :try_end_b3} :catchall_b4

    :cond_b3
    return-void

    :catchall_b4
    move-exception v0

    sget-boolean v4, Labcd/Ie;->VH:Z

    if-eqz v4, :cond_bc

    invoke-static {v0, v2, v3, v1, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_bc
    goto :goto_be

    :goto_bd
    throw v0

    :goto_be
    goto :goto_bd
.end method

.method private j6(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x1edb4dc12497edc5L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Ie;->Zo:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x2b5bdee1898f2f34L  # -5.503497683684118E99

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_1f

    if-nez v0, :cond_1a

    const-string p1, ""

    return-object p1

    :cond_1a
    :try_start_1a
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object p1
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_1f

    return-object p1

    :catchall_1f
    move-exception v0

    sget-boolean v1, Labcd/Ie;->VH:Z

    if-eqz v1, :cond_30

    const-wide v2, -0x2b5bdee1898f2f34L  # -5.503497683684118E99

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v0
.end method


# virtual methods
.method protected DW(Ljava/lang/String;)Labcd/Ie;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x48055b87d025d0L
    .end annotation

    const-wide v0, -0x58e86885530d889fL

    :try_start_5
    sget-boolean v2, Labcd/Ie;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Labcd/Ie;

    invoke-direct {v2, p1}, Labcd/Ie;-><init>(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-object v2

    :catchall_12
    move-exception v2

    sget-boolean v3, Labcd/Ie;->VH:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method protected bridge synthetic newInstance(Ljava/lang/String;)Labcd/BaseProjectConfig;
    .registers 2

    invoke-virtual {p0, p1}, Labcd/Ie;->DW(Ljava/lang/String;)Labcd/Ie;

    move-result-object p1

    return-object p1
.end method
