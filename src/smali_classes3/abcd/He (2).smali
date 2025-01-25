.class public Labcd/He;
.super Labcd/BaseProjectConfig;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LSi<",
        "Labcd/He;",
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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/He;

    const-wide v1, 0x6c9636dc95a891dL

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x6734b1338c45698L

    :try_start_6
    sget-boolean v3, Labcd/He;->Zo:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Labcd/BaseProjectConfig;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Labcd/He;->gn:Ljava/util/List;
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v3

    sget-boolean v4, Labcd/He;->VH:Z

    if-eqz v4, :cond_20

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v3
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x21a88401563f507L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x2f5029a17a3986dcL  # -4.718741405261826E80

    :try_start_6
    sget-boolean v3, Labcd/He;->Zo:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Labcd/BaseProjectConfig;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Labcd/He;->gn:Ljava/util/List;
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_5d

    :try_start_17
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    const-string v3, "versions"

    invoke-interface {v4, v3}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    if-eqz v3, :cond_5c

    const-string v5, "version"

    invoke-interface {v3, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    :goto_40
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v4, v5, :cond_5c

    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    iget-object v6, p0, Labcd/He;->gn:Ljava/util/List;

    invoke-interface {v5}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_55} :catch_58
    .catchall {:try_start_17 .. :try_end_55} :catchall_5d

    add-int/lit8 v4, v4, 0x1

    goto :goto_40

    :catch_58
    move-exception v3

    :try_start_59
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_5d

    :cond_5c
    return-void

    :catchall_5d
    move-exception v3

    sget-boolean v4, Labcd/He;->VH:Z

    if-eqz v4, :cond_65

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_65
    goto :goto_67

    :goto_66
    throw v3

    :goto_67
    goto :goto_66
.end method

.method public static j6(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/He;->Zo:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    const-wide v2, 0xa8aeb2a2af90000L

    invoke-static {v2, v3, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v0, Labcd/Ge;

    invoke-direct {v0}, Labcd/Ge;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1b
    if-ltz v0, :cond_33

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, p1}, Labcd/He;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2f
    .catchall {:try_start_0 .. :try_end_2f} :catchall_34

    return-object v0

    :cond_30
    add-int/lit8 v0, v0, -0x1

    goto :goto_1b

    :cond_33
    return-object v1

    :catchall_34
    move-exception v0

    sget-boolean v1, Labcd/He;->VH:Z

    if-eqz v1, :cond_45

    const-wide v2, 0xa8aeb2a2af90000L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_45
    goto :goto_47

    :goto_46
    throw v0

    :goto_47
    goto :goto_46
.end method

.method public static j6(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    :try_start_0
    sget-boolean v0, Labcd/He;->Zo:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x3d9a6b0f5708619L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const/4 v0, 0x1

    if-nez p1, :cond_11

    return v0

    :cond_11
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    return v0

    :cond_18
    const-string v0, "+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    const/16 v0, 0x2b

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0
    :try_end_2f
    .catchall {:try_start_0 .. :try_end_2f} :catchall_31

    return p0

    :cond_30
    return v1

    :catchall_31
    move-exception v0

    sget-boolean v1, Labcd/He;->VH:Z

    if-eqz v1, :cond_42

    const-wide v2, -0x3d9a6b0f5708619L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_42
    throw v0
.end method


# virtual methods
.method protected DW(Ljava/lang/String;)Labcd/He;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x6a23ff59b36ebd0L
    .end annotation

    const-wide v0, -0x4215b6313f56cdcfL  # -1.9127263690485197E-10

    :try_start_5
    sget-boolean v2, Labcd/He;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Labcd/He;

    invoke-direct {v2, p1}, Labcd/He;-><init>(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-object v2

    :catchall_12
    move-exception v2

    sget-boolean v3, Labcd/He;->VH:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public FH(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const-wide v0, -0x6b6e341f91746d50L

    :try_start_5
    sget-boolean v2, Labcd/He;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_b6

    const/16 v2, 0x2c

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x5b

    if-ne v6, v7, :cond_38

    const/4 v6, 0x1

    goto :goto_39

    :cond_38
    const/4 v6, 0x0

    :goto_39
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x5d

    if-ne v7, v8, :cond_48

    const/4 v7, 0x1

    goto :goto_49

    :cond_48
    const/4 v7, 0x0

    :goto_49
    iget-object v8, p0, Labcd/He;->gn:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6e

    :goto_56
    if-ltz v8, :cond_6e

    iget-object v3, p0, Labcd/He;->gn:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v2}, Labcd/He;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6b

    if-nez v7, :cond_6e

    add-int/lit8 v8, v8, -0x1

    goto :goto_6e

    :cond_6b
    add-int/lit8 v8, v8, -0x1

    goto :goto_56

    :cond_6e
    :goto_6e
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_92

    :goto_74
    iget-object v2, p0, Labcd/He;->gn:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_92

    iget-object v2, p0, Labcd/He;->gn:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v4}, Labcd/He;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8f

    if-nez v6, :cond_92

    add-int/lit8 v5, v5, 0x1

    goto :goto_92

    :cond_8f
    add-int/lit8 v5, v5, 0x1

    goto :goto_74

    :cond_92
    :goto_92
    if-lt v8, v5, :cond_a5

    iget-object v2, p0, Labcd/He;->gn:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_a5

    iget-object v2, p0, Labcd/He;->gn:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    :cond_a5
    iget-object v2, p0, Labcd/He;->gn:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_f2

    iget-object v2, p0, Labcd/He;->gn:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    :cond_b6
    const-string v2, "["

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_cf

    const-string v2, "]"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_cf

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_cf
    iget-object v2, p0, Labcd/He;->gn:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    :goto_d6
    if-ltz v2, :cond_f2

    iget-object v3, p0, Labcd/He;->gn:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, p1}, Labcd/He;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ef

    iget-object v3, p0, Labcd/He;->gn:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_ee
    .catchall {:try_start_5 .. :try_end_ee} :catchall_f4

    return-object v2

    :cond_ef
    add-int/lit8 v2, v2, -0x1

    goto :goto_d6

    :cond_f2
    const/4 p1, 0x0

    return-object p1

    :catchall_f4
    move-exception v2

    sget-boolean v3, Labcd/He;->VH:Z

    if-eqz v3, :cond_fc

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_fc
    goto :goto_fe

    :goto_fd
    throw v2

    :goto_fe
    goto :goto_fd
.end method

.method protected bridge synthetic newInstance(Ljava/lang/String;)Labcd/BaseProjectConfig;
    .registers 2

    invoke-virtual {p0, p1}, Labcd/He;->DW(Ljava/lang/String;)Labcd/He;

    move-result-object p1

    return-object p1
.end method
