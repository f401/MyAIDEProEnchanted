.class public Lcom/aide/ui/trainer/g;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/ui/trainer/g$a;,
        Lcom/aide/ui/trainer/g$b;,
        Lcom/aide/ui/trainer/g$c;,
        Lcom/aide/ui/trainer/g$d;,
        Lcom/aide/ui/trainer/g$e;,
        Lcom/aide/ui/trainer/g$f;,
        Lcom/aide/ui/trainer/g$g;,
        Lcom/aide/ui/trainer/g$h;,
        Lcom/aide/ui/trainer/g$i;,
        Lcom/aide/ui/trainer/g$j;
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
.field private FH:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = -0x98dd78cbd767b55L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aide/ui/trainer/g$a;",
            ">;"
        }
    .end annotation
.end field

.field private Hw:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x99a03cdc046d900L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/trainer/g;

    const-wide v1, -0xdc8eb718be40ad0L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 13

    const/4 v0, 0x0

    const-wide v1, 0x3e135b723fae0567L  # 1.1267380350946444E-9

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/trainer/g;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/aide/ui/trainer/g;->FH:Ljava/util/List;

    invoke-static {}, Lcom/aide/ui/U;->Hw()[Labcd/IProject;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1e
    if-ge v5, v4, :cond_56

    aget-object v7, v3, v5

    invoke-interface {v7}, Labcd/IProject;->FH()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_53

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_53

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/aide/ui/trainer/g$b;

    iget-object v9, v8, Lcom/aide/ui/trainer/g$b;->FH:Ljava/lang/String;
    :try_end_3a
    .catchall {:try_start_6 .. :try_end_3a} :catchall_61

    :try_start_3a
    iget-object v10, p0, Lcom/aide/ui/trainer/g;->FH:Ljava/util/List;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3c} :catch_48
    .catchall {:try_start_3a .. :try_end_3c} :catchall_61

    add-int/lit8 v11, v6, 0x1

    :try_start_3e
    invoke-direct {p0, v9, v6, v8}, Lcom/aide/ui/trainer/g;->j6(Ljava/lang/String;ILcom/aide/ui/trainer/g$b;)Lcom/aide/ui/trainer/g$a;

    move-result-object v6

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_45} :catch_46
    .catchall {:try_start_3e .. :try_end_45} :catchall_61

    goto :goto_51

    :catch_46
    move-exception v6

    goto :goto_4b

    :catch_48
    move-exception v8

    move v11, v6

    move-object v6, v8

    :goto_4b
    :try_start_4b
    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/aide/ui/trainer/g;->Hw:Ljava/lang/String;

    :goto_51
    move v6, v11

    goto :goto_2c

    :cond_53
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    :cond_56
    iget-object v3, p0, Lcom/aide/ui/trainer/g;->FH:Ljava/util/List;

    new-instance v4, Lcom/aide/ui/trainer/f;

    invoke-direct {v4, p0}, Lcom/aide/ui/trainer/f;-><init>(Lcom/aide/ui/trainer/g;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_60
    .catchall {:try_start_4b .. :try_end_60} :catchall_61

    return-void

    :catchall_61
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/trainer/g;->DW:Z

    if-eqz v4, :cond_69

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_69
    goto :goto_6b

    :goto_6a
    throw v3

    :goto_6b
    goto :goto_6a
.end method

.method private static DW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x3dd448d043412810L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x12e4a586b9e9b295L  # -3.7717978566835366E217

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_38
    .catchall {:try_start_0 .. :try_end_38} :catchall_39

    return-object p0

    :catchall_39
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g;->DW:Z

    if-eqz v1, :cond_4b

    const-wide v2, -0x12e4a586b9e9b295L  # -3.7717978566835366E217

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4b
    throw v0
.end method

.method private static DW(Lorg/w3c/dom/Element;)Ljava/lang/String;
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x2e9782bf35c0d970L
    .end annotation

    const-wide v0, 0x22824694a76a1afbL

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/trainer/g;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    if-nez p0, :cond_10

    return-object v2

    :cond_10
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    const/4 v4, 0x0

    :goto_15
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v4, v5, :cond_31

    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    instance-of v6, v5, Lorg/w3c/dom/CharacterData;

    if-eqz v6, :cond_2e

    check-cast v5, Lorg/w3c/dom/CharacterData;

    invoke-interface {v5}, Lorg/w3c/dom/CharacterData;->getTextContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0
    :try_end_2d
    .catchall {:try_start_6 .. :try_end_2d} :catchall_32

    return-object p0

    :cond_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_31
    return-object v2

    :catchall_32
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/trainer/g;->DW:Z

    if-eqz v4, :cond_3a

    invoke-static {v3, v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3a
    goto :goto_3c

    :goto_3b
    throw v3

    :goto_3c
    goto :goto_3b
.end method

.method static synthetic DW(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Lcom/aide/ui/trainer/g;->EQ(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static DW(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Element;
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x53fac33cc525a828L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g;->j6:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x2a869cd8f1b67c2dL  # 7.887577571834173E-104

    invoke-static {v2, v3, v1, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    invoke-static {p0, v1, p1}, Lcom/aide/ui/trainer/g;->DW(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object p0
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_17

    return-object p0

    :catchall_17
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g;->DW:Z

    if-eqz v1, :cond_2c

    const-wide v2, 0x2a869cd8f1b67c2dL  # 7.887577571834173E-104

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    throw v0
.end method

.method private static DW(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x27ff8a09b702548cL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g;->j6:Z

    if-eqz v0, :cond_14

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x198be5729d16cba1L  # -3.416911816885953E185

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    const/4 v0, 0x0

    if-nez p0, :cond_18

    return-object v0

    :cond_18
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1e
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v2, v4, :cond_42

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    instance-of v5, v4, Lorg/w3c/dom/Element;

    if-eqz v5, :cond_3f

    if-eqz p1, :cond_38

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    :cond_38
    if-ne v3, p2, :cond_3d

    check-cast v4, Lorg/w3c/dom/Element;
    :try_end_3c
    .catchall {:try_start_0 .. :try_end_3c} :catchall_43

    return-object v4

    :cond_3d
    add-int/lit8 v3, v3, 0x1

    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_42
    return-object v0

    :catchall_43
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g;->DW:Z

    if-eqz v1, :cond_59

    const-wide v2, -0x198be5729d16cba1L  # -3.416911816885953E185

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_59
    goto :goto_5b

    :goto_5a
    throw v0

    :goto_5b
    goto :goto_5a
.end method

.method private static EQ(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x126a3e2ba9215L
    .end annotation

    const-string v0, "en"

    :try_start_2
    sget-boolean v1, Lcom/aide/ui/trainer/g;->j6:Z

    if-eqz v1, :cond_f

    const-wide v1, -0x30416b44bff0204L

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_f
    invoke-static {}, Lcom/aide/ui/trainer/g;->FH()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    return-object v0

    :cond_1a
    invoke-static {p0, p1}, Lcom/aide/ui/trainer/g;->VH(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "@string/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_24
    .catchall {:try_start_2 .. :try_end_24} :catchall_69

    if-eqz v2, :cond_68

    :try_start_26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v1, v1, v3

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_language"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "string"

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/aide/ui/trainer/g;->FH()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_64} :catch_67
    .catchall {:try_start_26 .. :try_end_64} :catchall_69

    if-eqz p0, :cond_68

    return-object v1

    :catch_67
    move-exception p0

    :cond_68
    return-object v0

    :catchall_69
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g;->DW:Z

    if-eqz v1, :cond_7a

    const-wide v2, -0x30416b44bff0204L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7a
    throw v0
.end method

.method public static FH()Ljava/lang/String;
    .registers 8

    const-string v0, "en"

    const/4 v1, 0x0

    const-wide v2, 0x214a83370c3b8021L

    :try_start_8
    sget-boolean v4, Lcom/aide/ui/trainer/g;->j6:Z

    if-eqz v4, :cond_f

    invoke-static {v2, v3, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_39

    if-eqz v4, :cond_1e

    return-object v0

    :cond_1e
    :try_start_1e
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "trainer_language"

    const-string v7, "string"

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v7, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_36} :catch_37
    .catchall {:try_start_1e .. :try_end_36} :catchall_39

    goto :goto_38

    :catch_37
    move-exception v1

    :goto_38
    return-object v0

    :catchall_39
    move-exception v0

    sget-boolean v4, Lcom/aide/ui/trainer/g;->DW:Z

    if-eqz v4, :cond_41

    invoke-static {v0, v2, v3, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_41
    throw v0
.end method

.method static synthetic FH(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Lcom/aide/ui/trainer/g;->tp(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic Hw(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Lcom/aide/ui/trainer/g;->VH(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static VH(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x1134c04211f6770L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x2ba14a2cf61a67e3L  # 1.5809571678002018E-98

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_17

    :cond_d
    if-nez p0, :cond_12

    const-string p0, ""

    return-object p0

    :cond_12
    :try_start_12
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_17

    return-object p0

    :catchall_17
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g;->DW:Z

    if-eqz v1, :cond_28

    const-wide v2, 0x2ba14a2cf61a67e3L  # 1.5809571678002018E-98

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_28
    throw v0
.end method

.method static synthetic Zo(Lorg/w3c/dom/Element;Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/aide/ui/trainer/g;->we(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static gn(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x79588cebaaa90b28L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g;->j6:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    const-wide v2, 0x27e6477c5dc6acdfL

    invoke-static {v2, v3, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    if-nez p0, :cond_10

    return-object v1

    :cond_10
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    return-object v0

    :catchall_1c
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g;->DW:Z

    if-eqz v1, :cond_2d

    const-wide v2, 0x27e6477c5dc6acdfL

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2d
    throw v0
.end method

.method static synthetic j6(Lorg/w3c/dom/Element;Ljava/lang/String;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/aide/ui/trainer/g;->u7(Lorg/w3c/dom/Element;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static j6(Lorg/w3c/dom/Element;Ljava/lang/String;I)I
    .registers 11

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g;->j6:Z

    if-eqz v0, :cond_14

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x11541311914772afL

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_1f

    :cond_14
    :try_start_14
    invoke-static {p0, p1}, Lcom/aide/ui/trainer/g;->VH(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1c} :catch_1d
    .catchall {:try_start_14 .. :try_end_1c} :catchall_1f

    return p0

    :catch_1d
    move-exception p0

    return p2

    :catchall_1f
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g;->DW:Z

    if-eqz v1, :cond_35

    const-wide v2, 0x11541311914772afL

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_35
    throw v0
.end method

.method private j6(Ljava/lang/String;ILcom/aide/ui/trainer/g$b;)Lcom/aide/ui/trainer/g$a;
    .registers 12
    .annotation runtime Labcd/su;
        method = -0xdec4d41eecdad90L
    .end annotation

    const-string v0, "trainer"

    :try_start_2
    sget-boolean v1, Lcom/aide/ui/trainer/g;->j6:Z

    if-eqz v1, :cond_16

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x5fd6c18b84c701e3L  # 4.767321067940695E153

    move-object v4, p0

    move-object v5, p1

    move-object v7, p3

    invoke-static/range {v2 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_77

    :cond_16
    const/4 v1, 0x1

    :try_start_17
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setCoalescing(Z)V

    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p1, v3}, Lcom/aide/ui/trainer/g;->DW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    new-instance v3, Lcom/aide/ui/trainer/g$a;

    invoke-direct {v3, p1, v2, p2, p3}, Lcom/aide/ui/trainer/g$a;-><init>(Ljava/lang/String;Lorg/w3c/dom/Document;ILcom/aide/ui/trainer/g$b;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_57} :catch_58
    .catchall {:try_start_17 .. :try_end_57} :catchall_77

    return-object v3

    :catch_58
    move-exception v2

    :try_start_59
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setCoalescing(Z)V

    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    const-string v2, "en.xml"

    invoke-static {v0, p1, v2}, Lcom/aide/ui/trainer/g;->DW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    new-instance v0, Lcom/aide/ui/trainer/g$a;

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/aide/ui/trainer/g$a;-><init>(Ljava/lang/String;Lorg/w3c/dom/Document;ILcom/aide/ui/trainer/g$b;)V
    :try_end_76
    .catchall {:try_start_59 .. :try_end_76} :catchall_77

    return-object v0

    :catchall_77
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g;->DW:Z

    if-eqz v1, :cond_8d

    const-wide v2, 0x5fd6c18b84c701e3L  # 4.767321067940695E153

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8d
    throw v0
.end method

.method static synthetic j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/aide/ui/trainer/g;->DW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j6(Lorg/w3c/dom/Element;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/aide/ui/trainer/g;->DW(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j6(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Element;
    .registers 2

    invoke-static {p0, p1}, Lcom/aide/ui/trainer/g;->DW(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Element;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j6(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/aide/ui/trainer/g;->DW(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object p0

    return-object p0
.end method

.method private static tp(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x2994d608a5296914L
    .end annotation

    const-string v0, "_"

    const-string v1, "$UNDERSCORE$"

    :try_start_4
    sget-boolean v2, Lcom/aide/ui/trainer/g;->j6:Z

    if-eqz v2, :cond_11

    const-wide v2, -0xe330f02ecdbb525L  # -1.5076673199465214E240

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-static {p0, p1}, Lcom/aide/ui/trainer/g;->VH(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "@string/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_9b

    const-string v4, " "

    if-eqz v3, :cond_54

    :try_start_1f
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x20

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v3, v3, v6

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "string"

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v3, v8, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v7, v3, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_52} :catch_53
    .catchall {:try_start_1f .. :try_end_52} :catchall_9b

    goto :goto_54

    :catch_53
    move-exception v3

    :cond_54
    :goto_54
    :try_start_54
    const-string v3, "<"

    const-string v5, "&lt;"

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ">"

    const-string v5, "&gt;"

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\'_"

    const-string v5, "<i>"

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "_\'"

    const-string v5, "</i>"

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "!_"

    const-string v5, "<b>"

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "_!"

    const-string v5, "</b>"

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "__"

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\n"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_9a
    .catchall {:try_start_54 .. :try_end_9a} :catchall_9b

    return-object p0

    :catchall_9b
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g;->DW:Z

    if-eqz v1, :cond_ac

    const-wide v2, -0xe330f02ecdbb525L  # -1.5076673199465214E240

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_ac
    throw v0
.end method

.method private static u7(Lorg/w3c/dom/Element;Ljava/lang/String;)I
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x36b020c7be357849L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x23ac47444eb2c3d0L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const/4 v0, 0x0

    if-nez p0, :cond_11

    return v0

    :cond_11
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v2, 0x0

    :goto_16
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_35

    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    instance-of v4, v3, Lorg/w3c/dom/Element;

    if-eqz v4, :cond_32

    if-eqz p1, :cond_30

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2e
    .catchall {:try_start_0 .. :try_end_2e} :catchall_36

    if-eqz v3, :cond_32

    :cond_30
    add-int/lit8 v2, v2, 0x1

    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_35
    return v2

    :catchall_36
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g;->DW:Z

    if-eqz v1, :cond_47

    const-wide v2, -0x23ac47444eb2c3d0L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_47
    goto :goto_49

    :goto_48
    throw v0

    :goto_49
    goto :goto_48
.end method

.method private v5(Ljava/lang/String;)Lcom/aide/ui/trainer/g$a;
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x402d136eaa1e1f75L
    .end annotation

    const-wide v0, 0x4b4e26e5aead430L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/g;->FH:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/ui/trainer/g$a;

    invoke-virtual {v3, p1}, Lcom/aide/ui/trainer/g$c;->DW(Ljava/lang/String;)Z

    move-result v4
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_27

    if-eqz v4, :cond_12

    return-object v3

    :cond_25
    const/4 p1, 0x0

    return-object p1

    :catchall_27
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g;->DW:Z

    if-eqz v3, :cond_2f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2f
    goto :goto_31

    :goto_30
    throw v2

    :goto_31
    goto :goto_30
.end method

.method static synthetic v5(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .registers 2

    invoke-static {p0, p1}, Lcom/aide/ui/trainer/g;->gn(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    return-object p0
.end method

.method private static we(Lorg/w3c/dom/Element;Ljava/lang/String;)Z
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x20d56e086b823f00L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/g;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x442a39043b231d83L  # 2.4186190984926105E20

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    if-nez p0, :cond_11

    const/4 p0, 0x0

    return p0

    :cond_11
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result p0
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    return p0

    :catchall_16
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/g;->DW:Z

    if-eqz v1, :cond_27

    const-wide v2, 0x442a39043b231d83L  # 2.4186190984926105E20

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    throw v0
.end method


# virtual methods
.method public DW(Ljava/lang/String;)Lcom/aide/ui/trainer/g$a;
    .registers 7

    const-wide v0, 0x76411ad9cd88233L  # 4.63725387282892E-273

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/g;->FH:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/ui/trainer/g$a;

    invoke-virtual {v3}, Lcom/aide/ui/trainer/g$c;->v5()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_2b

    if-eqz v4, :cond_12

    return-object v3

    :cond_29
    const/4 p1, 0x0

    return-object p1

    :catchall_2b
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g;->DW:Z

    if-eqz v3, :cond_33

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_33
    goto :goto_35

    :goto_34
    throw v2

    :goto_35
    goto :goto_34
.end method

.method public DW()Ljava/lang/String;
    .registers 6

    const-wide v0, -0x438fbcfc771c2da3L  # -1.410483941939145E-17

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/g;->FH:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/ui/trainer/g$a;

    invoke-virtual {v3}, Lcom/aide/ui/trainer/g$c;->J8()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-virtual {v3}, Lcom/aide/ui/trainer/g$c;->v5()Ljava/lang/String;

    move-result-object v0
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_2c

    return-object v0

    :cond_29
    const-string v0, ""

    return-object v0

    :catchall_2c
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g;->DW:Z

    if-eqz v3, :cond_34

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_34
    goto :goto_36

    :goto_35
    throw v2

    :goto_36
    goto :goto_35
.end method

.method public FH(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-wide v0, -0x186e0251cb8ee460L  # -8.015878192469388E190

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_1e

    :cond_c
    :try_start_c
    invoke-virtual {p0, p1}, Lcom/aide/ui/trainer/g;->DW(Ljava/lang/String;)Lcom/aide/ui/trainer/g$a;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/aide/ui/trainer/g$a;->j6(I)Lcom/aide/ui/trainer/g$g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/trainer/g$i;->Zo()Ljava/lang/String;

    move-result-object p1
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_19} :catch_1a
    .catchall {:try_start_c .. :try_end_19} :catchall_1e

    return-object p1

    :catch_1a
    move-exception p1

    const-string p1, ""

    return-object p1

    :catchall_1e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g;->DW:Z

    if-eqz v3, :cond_26

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v2
.end method

.method public Hw(Ljava/lang/String;)Lcom/aide/ui/trainer/g$a;
    .registers 6

    const-wide v0, -0x5048258a84f9b074L  # -8.046937318144905E-79

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Lcom/aide/ui/trainer/g;->v5(Ljava/lang/String;)Lcom/aide/ui/trainer/g$a;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    return-object p1

    :catchall_11
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g;->DW:Z

    if-eqz v3, :cond_19

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    throw v2
.end method

.method public Hw()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aide/ui/trainer/g$c;",
            ">;"
        }
    .end annotation

    const-wide v0, -0x2d4dadc1951d9514L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/ui/trainer/g;->FH:Ljava/util/List;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public j6()Ljava/lang/String;
    .registers 5

    const-wide v0, 0x2fc4a0f6d17fcc5fL  # 1.391824230847065E-78

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/ui/trainer/g;->Hw:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-wide v0, -0x38515bace499ee48L  # -2.0365031084546785E37

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/g;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Lcom/aide/ui/trainer/g;->v5(Ljava/lang/String;)Lcom/aide/ui/trainer/g$a;

    move-result-object v2

    if-nez v2, :cond_32

    invoke-virtual {p0}, Lcom/aide/ui/trainer/g;->DW()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/aide/ui/trainer/g;->FH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_21

    return-object v2

    :cond_21
    iget-object v2, p0, Lcom/aide/ui/trainer/g;->FH:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/trainer/g$a;

    invoke-virtual {v2}, Lcom/aide/ui/trainer/g$c;->v5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/aide/ui/trainer/g;->FH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_33

    :cond_32
    return-object p1

    :catchall_33
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/g;->DW:Z

    if-eqz v3, :cond_3b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3b
    throw v2
.end method
