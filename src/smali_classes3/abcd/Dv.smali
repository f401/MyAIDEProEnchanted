.class public Labcd/Dv;
.super Ljava/lang/Object;


# static fields
.field private static final DW:[Ljava/lang/Object;

.field private static final j6:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private FH:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Hw:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Zo:Ljava/lang/Object;

.field private v5:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Labcd/Dv;->j6:Ljava/util/Map;

    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0x2e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v3, "dot"

    aput-object v3, v0, v1

    const/16 v1, 0x3a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    const-string v3, "colon"

    aput-object v3, v0, v1

    const/16 v1, 0x3b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const-string v3, "semicolon"

    aput-object v3, v0, v1

    const/16 v1, 0x2f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v3, 0x6

    aput-object v1, v0, v3

    const/4 v1, 0x7

    const-string v3, "slash"

    aput-object v3, v0, v1

    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v3, 0x8

    aput-object v1, v0, v3

    const/16 v1, 0x9

    const-string v3, "and"

    aput-object v3, v0, v1

    const/16 v1, 0x7c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v3, 0xa

    aput-object v1, v0, v3

    const/16 v1, 0xb

    const-string v3, "or"

    aput-object v3, v0, v1

    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v3, 0xc

    aput-object v1, v0, v3

    const/16 v1, 0xd

    const-string v3, "exclamation"

    aput-object v3, v0, v1

    const/16 v1, 0x3f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v3, 0xe

    aput-object v1, v0, v3

    const/16 v1, 0xf

    const-string v3, "question"

    aput-object v3, v0, v1

    const/16 v1, 0x25

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v3, 0x10

    aput-object v1, v0, v3

    const/16 v1, 0x11

    const-string v3, "percentage"

    aput-object v3, v0, v1

    const/16 v1, 0x2b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v3, 0x12

    aput-object v1, v0, v3

    const/16 v1, 0x13

    const-string v3, "plus"

    aput-object v3, v0, v1

    const/16 v1, 0x2d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v3, 0x14

    aput-object v1, v0, v3

    const/16 v1, 0x15

    const-string v3, "minus"

    aput-object v3, v0, v1

    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v3, 0x16

    aput-object v1, v0, v3

    const/16 v1, 0x17

    const-string v3, "start"

    aput-object v3, v0, v1

    sput-object v0, Labcd/Dv;->DW:[Ljava/lang/Object;

    :goto_c5
    sget-object v0, Labcd/Dv;->DW:[Ljava/lang/Object;

    array-length v1, v0

    if-ge v2, v1, :cond_dc

    sget-object v1, Labcd/Dv;->j6:Ljava/util/Map;

    aget-object v3, v0, v2

    check-cast v3, Ljava/lang/Character;

    add-int/lit8 v4, v2, 0x1

    aget-object v0, v0, v4

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x2

    goto :goto_c5

    :cond_dc
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Labcd/Dv;->FH:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Labcd/Dv;->Hw:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Labcd/Dv;->Zo:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Labcd/Cv;

    invoke-direct {v1, p0}, Labcd/Cv;-><init>(Labcd/Dv;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private DW(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x20

    if-ge v2, v3, :cond_39

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_36

    :cond_21
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_36

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-eq v3, v4, :cond_36

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_36
    :goto_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_39
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4e

    const/16 p1, 0x5f

    invoke-virtual {v0, v4, p1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4e
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_53
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_71

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sget-object v3, Labcd/Dv;->j6:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_6e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6e
    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    :cond_71
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    if-lez p1, :cond_7c

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7c
    const-string p1, "chars"

    return-object p1
.end method

.method static synthetic DW(Labcd/Dv;)V
    .registers 1

    invoke-direct {p0}, Labcd/Dv;->j6()V

    return-void
.end method

.method private DW(Landroid/content/res/Resources;ILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result p2

    :goto_8
    const/4 v0, 0x1

    if-eq p2, v0, :cond_38

    const/4 v0, 0x2

    if-ne p2, v0, :cond_33

    const/4 p2, 0x0

    :goto_f
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v0

    if-ge p2, v0, :cond_33

    const-string v0, "text"

    invoke-interface {p1, p2}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {p1, p2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_30

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_30
    add-int/lit8 p2, p2, 0x1

    goto :goto_f

    :cond_33
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result p2

    goto :goto_8

    :cond_38
    return-void
.end method

.method static synthetic j6(Labcd/Dv;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Labcd/Dv;->Zo:Ljava/lang/Object;

    return-object p0
.end method

.method private j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x1522366d

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v0, v1, :cond_2a

    const v1, 0x24df4857

    if-eq v0, v1, :cond_20

    const v1, 0x49ba0aad

    if-eq v0, v1, :cond_16

    goto :goto_34

    :cond_16
    const-string v0, "action_bar_up_description"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 v0, 0x0

    goto :goto_35

    :cond_20
    const-string v0, "floating_toolbar_open_overflow_description"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 v0, 0x1

    goto :goto_35

    :cond_2a
    const-string v0, "abc_action_menu_overflow_description"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 v0, 0x2

    goto :goto_35

    :cond_34
    :goto_34
    const/4 v0, -0x1

    :goto_35
    if-eqz v0, :cond_3f

    if-eq v0, v2, :cond_3c

    if-eq v0, v3, :cond_3c

    return-object p1

    :cond_3c
    const-string p1, "more"

    return-object p1

    :cond_3f
    const-string p1, "up"

    return-object p1
.end method

.method private j6()V
    .registers 16

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "assets/res.dat.jet"

    move-object v1, p0

    move-object v3, v10

    move-object v4, v11

    move-object v5, v14

    move-object v6, v12

    move-object v7, v13

    move-object v8, v9

    invoke-direct/range {v1 .. v8}, Labcd/Dv;->j6(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    const-string v1, "android.R$string"

    invoke-direct {p0, v1, v10}, Labcd/Dv;->j6(Ljava/lang/String;Ljava/util/List;)V

    const-string v1, "com.android.internal.R$string"

    invoke-direct {p0, v1, v10}, Labcd/Dv;->j6(Ljava/lang/String;Ljava/util/List;)V

    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_45
    :goto_45
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_81

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    :try_start_51
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Labcd/Dv;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7b

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-le v5, v6, :cond_45

    :cond_7b
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7e
    .catchall {:try_start_51 .. :try_end_7e} :catchall_7f

    goto :goto_45

    :catchall_7f
    move-exception v3

    goto :goto_45

    :cond_81
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_85
    :goto_85
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    :try_start_91
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    :goto_a2
    array-length v6, v3
    :try_end_a3
    .catchall {:try_start_91 .. :try_end_a3} :catchall_d7

    if-ge v5, v6, :cond_85

    aget-object v6, v3, v5

    :try_start_a7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d1

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-le v8, v10, :cond_d4

    :cond_d1
    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d4
    .catchall {:try_start_a7 .. :try_end_d4} :catchall_d7

    :cond_d4
    add-int/lit8 v5, v5, 0x1

    goto :goto_a2

    :catchall_d7
    move-exception v3

    goto :goto_85

    :cond_d9
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_dd
    :goto_dd
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_134

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    :try_start_e9
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v1, v3, v4, v5}, Labcd/Dv;->j6(Landroid/content/res/Resources;ILjava/util/List;Ljava/util/List;)V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_fe
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_114

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/CharSequence;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_fe

    :cond_114
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_118
    :goto_118
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_dd

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_118

    invoke-direct {p0, v4}, Labcd/Dv;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_131
    .catchall {:try_start_e9 .. :try_end_131} :catchall_132

    goto :goto_118

    :catchall_132
    move-exception v3

    goto :goto_dd

    :cond_134
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_138
    :goto_138
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_170

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    :try_start_144
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v1, v3, v4}, Labcd/Dv;->j6(Landroid/content/res/Resources;ILjava/util/List;)V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_154
    :goto_154
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_138

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_154

    invoke-direct {p0, v4}, Labcd/Dv;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16d
    .catchall {:try_start_144 .. :try_end_16d} :catchall_16e

    goto :goto_154

    :catchall_16e
    move-exception v3

    goto :goto_138

    :cond_170
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_174
    :goto_174
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1ac

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    :try_start_180
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v1, v3, v4}, Labcd/Dv;->DW(Landroid/content/res/Resources;ILjava/util/List;)V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_190
    :goto_190
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_174

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_190

    invoke-direct {p0, v4}, Labcd/Dv;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a9
    .catchall {:try_start_180 .. :try_end_1a9} :catchall_1aa

    goto :goto_190

    :catchall_1aa
    move-exception v3

    goto :goto_174

    :cond_1ac
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1b0
    :goto_1b0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1ca

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b0

    invoke-direct {p0, v2}, Labcd/Dv;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b0

    :cond_1ca
    iput-object v0, p0, Labcd/Dv;->FH:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Labcd/Dv;->v5:Ljava/util/HashMap;

    iget-object v1, p0, Labcd/Dv;->FH:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Labcd/Dv;->v5:Ljava/util/HashMap;

    iget-object v1, p0, Labcd/Dv;->Hw:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method private j6(Landroid/content/res/Resources;ILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result p2

    :goto_8
    const/4 v0, 0x1

    if-eq p2, v0, :cond_38

    const/4 v0, 0x2

    if-ne p2, v0, :cond_33

    const/4 p2, 0x0

    :goto_f
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v0

    if-ge p2, v0, :cond_33

    const-string v0, "title"

    invoke-interface {p1, p2}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {p1, p2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_30

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_30
    add-int/lit8 p2, p2, 0x1

    goto :goto_f

    :cond_33
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result p2

    goto :goto_8

    :cond_38
    return-void
.end method

.method private j6(Landroid/content/res/Resources;ILjava/util/List;Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "I",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    :goto_8
    const/4 v1, 0x1

    if-eq v0, v1, :cond_7c

    const/4 v2, 0x2

    if-ne v0, v2, :cond_77

    const/4 v0, 0x0

    const/4 v2, 0x0

    move-object v3, v0

    move-object v4, v3

    :goto_12
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v5

    const-string v6, "@"

    if-ge v2, v5, :cond_55

    const-string v5, "key"

    invoke-interface {p2, v2}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {p2, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_52

    :cond_2b
    const-string v5, "title"

    invoke-interface {p2, v2}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    invoke-interface {p2, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_52

    invoke-interface {p4, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_52

    :cond_45
    invoke-interface {p2, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_52

    invoke-interface {p4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_52
    :goto_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_55
    if-eqz v3, :cond_77

    if-eqz v4, :cond_77

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6e

    :try_start_5f
    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_6b
    .catchall {:try_start_5f .. :try_end_6b} :catchall_6c

    goto :goto_6f

    :catchall_6c
    move-exception v1

    goto :goto_6f

    :cond_6e
    move-object v0, v4

    :goto_6f
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_77
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    goto :goto_8

    :cond_7c
    return-void
.end method

.method private j6(Ljava/lang/String;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    array-length v0, p1
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_2f

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_30

    aget-object v2, p1, v1

    :try_start_e
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_2c

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_2c

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_2c

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2a} :catch_2b
    .catchall {:try_start_e .. :try_end_2a} :catchall_2f

    goto :goto_2c

    :catch_2b
    move-exception v2

    :cond_2c
    :goto_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :catchall_2f
    move-exception p1

    :cond_30
    return-void
.end method

.method private j6(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1c
    if-ge v2, p1, :cond_2c

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_2c
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    const/4 p2, 0x0

    :goto_31
    if-ge p2, p1, :cond_41

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_31

    :cond_41
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    const/4 p2, 0x0

    :goto_46
    if-ge p2, p1, :cond_56

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_46

    :cond_56
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    const/4 p2, 0x0

    :goto_5b
    if-ge p2, p1, :cond_6b

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p5, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_5b

    :cond_6b
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    const/4 p2, 0x0

    :goto_70
    if-ge p2, p1, :cond_80

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p6, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_70

    :cond_80
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    :goto_84
    if-ge v1, p1, :cond_90

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p7, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_84

    :cond_90
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_93
    .catchall {:try_start_0 .. :try_end_93} :catchall_94

    goto :goto_95

    :catchall_94
    move-exception p1

    :goto_95
    return-void
.end method


# virtual methods
.method public j6(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_30

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_30

    :cond_a
    iget-object v1, p0, Labcd/Dv;->v5:Ljava/util/HashMap;

    if-nez v1, :cond_29

    const-string v1, "String resources"

    const-string v2, "getResourceName() before loading Strings"

    invoke-static {v1, v2}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Labcd/Dv;->Zo:Ljava/lang/Object;

    monitor-enter v2

    :try_start_18
    iget-object v1, p0, Labcd/Dv;->v5:Ljava/util/HashMap;

    if-nez v1, :cond_24

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit v2

    return-object p1

    :cond_24
    monitor-exit v2

    return-object v0

    :catchall_26
    move-exception p1

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_18 .. :try_end_28} :catchall_26

    throw p1

    :cond_29
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_30
    :goto_30
    return-object v0
.end method

.method public j6(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-direct {p0, v1}, Labcd/Dv;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_23
    iput-object v0, p0, Labcd/Dv;->Hw:Ljava/util/HashMap;

    iget-object p1, p0, Labcd/Dv;->Zo:Ljava/lang/Object;

    monitor-enter p1

    :try_start_28
    iget-object v0, p0, Labcd/Dv;->v5:Ljava/util/HashMap;

    if-eqz v0, :cond_3f

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Labcd/Dv;->v5:Ljava/util/HashMap;

    iget-object v1, p0, Labcd/Dv;->FH:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Labcd/Dv;->v5:Ljava/util/HashMap;

    iget-object v1, p0, Labcd/Dv;->Hw:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_3f
    monitor-exit p1

    return-void

    :catchall_41
    move-exception v0

    monitor-exit p1
    :try_end_43
    .catchall {:try_start_28 .. :try_end_43} :catchall_41

    goto :goto_45

    :goto_44
    throw v0

    :goto_45
    goto :goto_44
.end method
