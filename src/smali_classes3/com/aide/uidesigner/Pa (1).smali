.class public abstract Lcom/aide/uidesigner/Pa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/common/UndoManager$a;


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


# instance fields
.field private EQ:Lorg/w3c/dom/Document;
    .annotation runtime Labcd/ru;
        field = -0x78aac3e6626c405L
    .end annotation
.end field

.field private FH:Landroid/content/Context;
    .annotation runtime Labcd/ru;
        field = -0x429461117db2b21L
    .end annotation
.end field

.field private Hw:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x2c0aa7f237b6ba94L
    .end annotation
.end field

.field private J0:Lcom/aide/common/UndoManager;
    .annotation runtime Labcd/ru;
        field = -0x281abbf623aae557L
    .end annotation
.end field

.field private J8:Z
    .annotation runtime Labcd/ru;
        field = 0x1a9bf5768fc3cfb1L
    .end annotation
.end field

.field private QX:Lcom/aide/common/ab;
    .annotation runtime Labcd/ru;
        field = -0x16aa5aac2c897a8L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/aide/common/ab<",
            "Lcom/aide/uidesigner/s;",
            ">;"
        }
    .end annotation
.end field

.field private VH:Ljava/util/Map;
    .annotation runtime Labcd/ru;
        field = -0x2965928cfbb27090L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private Ws:Z
    .annotation runtime Labcd/ru;
        field = 0xc91810c3529aff8L
    .end annotation
.end field

.field private XL:Ljava/util/ArrayList;
    .annotation runtime Labcd/ru;
        field = -0x1307f1f38f74cec0L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/w3c/dom/Element;",
            ">;"
        }
    .end annotation
.end field

.field private Zo:Ljava/util/Map;
    .annotation runtime Labcd/ru;
        field = -0x1a771ecc5d16fad3L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation
.end field

.field private gn:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = 0x23aa13a80732b9f8L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aide/uidesigner/s;",
            ">;"
        }
    .end annotation
.end field

.field private tp:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x8120b577b0a72f8L
    .end annotation
.end field

.field private u7:Lcom/aide/uidesigner/la;
    .annotation runtime Labcd/ru;
        field = -0x5af9bf32c79cdf0L
    .end annotation
.end field

.field private v5:Landroid/view/ViewGroup;
    .annotation runtime Labcd/ru;
        field = -0x8b42263aa91dfebL
    .end annotation
.end field

.field private we:Ljava/lang/Throwable;
    .annotation runtime Labcd/ru;
        field = 0x5cd3819405055e51L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/uidesigner/Pa;

    const-wide v1, -0x14e43586bd4fe1d1L  # -8.922361944275119E207

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Lcom/aide/common/UndoManager;)V
    .registers 14

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_11

    const-wide v1, 0x16a399d64887fd87L

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aide/uidesigner/Pa;->Zo:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aide/uidesigner/Pa;->VH:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aide/uidesigner/Pa;->gn:Ljava/util/List;

    invoke-virtual {p4, p0}, Lcom/aide/common/UndoManager;->j6(Lcom/aide/common/UndoManager$a;)V

    iput-object p4, p0, Lcom/aide/uidesigner/Pa;->J0:Lcom/aide/common/UndoManager;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    iput-object p1, p0, Lcom/aide/uidesigner/Pa;->v5:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/aide/uidesigner/Pa;->Hw:Ljava/lang/String;

    new-instance v0, Lcom/aide/uidesigner/la;

    iget-object v1, p0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    invoke-direct {v0, v1, p3}, Lcom/aide/uidesigner/la;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/aide/uidesigner/Pa;->u7:Lcom/aide/uidesigner/la;
    :try_end_41
    .catchall {:try_start_0 .. :try_end_41} :catchall_42

    return-void

    :catchall_42
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_55

    const-wide v2, 0x16a399d64887fd87L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_55
    throw v0
.end method

.method static synthetic DW(Lcom/aide/uidesigner/Pa;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    return-object p0
.end method

.method private DW(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Integer;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x1bd13e8b19fc39abL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x19ebd943452c89f3L  # 8.192516318907971E-184

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->we(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/String;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_67

    const/4 p2, 0x0

    if-eqz p1, :cond_66

    const/4 v0, 0x0

    :try_start_14
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_38

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v2, 0x7

    if-ne p1, v2, :cond_32

    const-wide/32 v2, -0x1000000

    or-long/2addr v0, v2

    :cond_32
    long-to-int p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_38
    const-string v0, "@android:color/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_66

    const-class v0, Landroid/R$color;

    const/16 v1, 0xf

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1
    :try_end_60
    .catchall {:try_start_14 .. :try_end_60} :catchall_65

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :catchall_65
    move-exception p1

    :cond_66
    return-object p2

    :catchall_67
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_78

    const-wide v2, 0x19ebd943452c89f3L  # 8.192516318907971E-184

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_78
    throw v0
.end method

.method private DW(Lcom/aide/uidesigner/b;)Lorg/w3c/dom/Element;
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x209975b6f5ff2833L
    .end annotation

    const-wide v0, 0x34800bcb299fe46fL  # 8.180115953699827E-56

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/Pa;->EQ:Lorg/w3c/dom/Document;

    iget-object v3, p1, Lcom/aide/uidesigner/b;->FH:Ljava/lang/String;

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    iget-object v3, p1, Lcom/aide/uidesigner/b;->Hw:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v5, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_5 .. :try_end_39} :catchall_3b

    goto :goto_1e

    :cond_3a
    return-object v2

    :catchall_3b
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v3, :cond_43

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_43
    goto :goto_45

    :goto_44
    throw v2

    :goto_45
    goto :goto_44
.end method

.method private EQ(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Lcom/aide/uidesigner/a;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x65d503ab8e540ec7L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x566c55db66e32715L  # 2.079588884851976E108

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    iget-object v1, p2, Lcom/aide/uidesigner/N$a;->Zo:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    instance-of v1, v0, Lorg/w3c/dom/Attr;

    if-eqz v1, :cond_22

    new-instance v1, Lcom/aide/uidesigner/a;

    check-cast v0, Lorg/w3c/dom/Attr;

    invoke-direct {v1, p2, v0}, Lcom/aide/uidesigner/a;-><init>(Lcom/aide/uidesigner/N$a;Lorg/w3c/dom/Attr;)V

    return-object v1

    :cond_22
    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v0}, Lcom/aide/uidesigner/Pa;->DW(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_39

    iget-object v1, p0, Lcom/aide/uidesigner/Pa;->u7:Lcom/aide/uidesigner/la;

    invoke-virtual {v1, v0, p2}, Lcom/aide/uidesigner/la;->j6(Ljava/lang/String;Lcom/aide/uidesigner/N$a;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_39

    new-instance v1, Lcom/aide/uidesigner/a;

    invoke-direct {v1, p2, v0}, Lcom/aide/uidesigner/a;-><init>(Lcom/aide/uidesigner/N$a;Ljava/lang/String;)V

    return-object v1

    :cond_39
    new-instance v0, Lcom/aide/uidesigner/a;

    invoke-direct {v0, p2}, Lcom/aide/uidesigner/a;-><init>(Lcom/aide/uidesigner/N$a;)V
    :try_end_3e
    .catchall {:try_start_0 .. :try_end_3e} :catchall_3f

    return-object v0

    :catchall_3f
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_50

    const-wide v2, 0x566c55db66e32715L  # 2.079588884851976E108

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_50
    throw v0
.end method

.method private FH(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Object;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x4fe32b6b75880198L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x401dae9e1cc75438L  # 7.420525026002956

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    sget-object v0, Lcom/aide/uidesigner/Oa;->j6:[I

    iget-object v1, p2, Lcom/aide/uidesigner/N$a;->VH:Lcom/aide/uidesigner/N$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_9e

    return-object v1

    :pswitch_1b  #0xf
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->J0(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2b

    new-instance v1, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {v1, v0}, Ljava/lang/Float;-><init>(F)V

    :cond_2b
    return-object v1

    :pswitch_2c  #0xe
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->J0(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_33

    return-object v0

    :cond_33
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->u7(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_3a

    return-object p1

    :cond_3a
    return-object v1

    :pswitch_3b  #0xd
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->QX(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :pswitch_40  #0xc
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->J0(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_45  #0xb
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->we(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_4a  #0xa
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->v5(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Enum;

    move-result-object p1

    return-object p1

    :pswitch_4f  #0x9
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->J8(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_54  #0x8
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->DW(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_64

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v1

    :cond_64
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->Hw(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_69  #0x7
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->Hw(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_6e  #0x6
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->DW(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_73  #0x5
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->Zo(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :pswitch_78  #0x4
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->u7(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_7d  #0x3
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->gn(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_82  #0x2
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->VH(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_87  #0x1
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->j6(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_8b
    .catchall {:try_start_0 .. :try_end_8b} :catchall_8c

    return-object p1

    :catchall_8c
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_9d

    const-wide v2, 0x401dae9e1cc75438L  # 7.420525026002956

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_9d
    throw v0

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_87  #00000001
        :pswitch_82  #00000002
        :pswitch_7d  #00000003
        :pswitch_78  #00000004
        :pswitch_73  #00000005
        :pswitch_6e  #00000006
        :pswitch_69  #00000007
        :pswitch_54  #00000008
        :pswitch_4f  #00000009
        :pswitch_4a  #0000000a
        :pswitch_45  #0000000b
        :pswitch_40  #0000000c
        :pswitch_3b  #0000000d
        :pswitch_2c  #0000000e
        :pswitch_1b  #0000000f
    .end packed-switch
.end method

.method private Hw(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Object;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x691842f70bafed74L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0xae90987f35e47a0L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->we(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/uidesigner/Pa;->u7:Lcom/aide/uidesigner/la;

    invoke-virtual {v1, v0}, Lcom/aide/uidesigner/la;->DW(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_19

    return-object v1

    :cond_19
    const/4 v1, 0x0

    if-eqz v0, :cond_46

    const-string v2, "@android:drawable/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_47

    if-eqz p1, :cond_46

    :try_start_24
    const-class p1, Landroid/R$drawable;

    const/16 p2, 0x12

    invoke-virtual {v0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p2, p0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_44
    .catchall {:try_start_24 .. :try_end_44} :catchall_45

    return-object p1

    :catchall_45
    move-exception p1

    :cond_46
    return-object v1

    :catchall_47
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_58

    const-wide v2, -0xae90987f35e47a0L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_58
    throw v0
.end method

.method private Hw(Lorg/w3c/dom/Element;)V
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x3d379a9ad0d61f3L
    .end annotation

    const-wide v0, -0x129c0d317038dc33L  # -8.802303416402835E218

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    sget-object v2, Lcom/aide/uidesigner/N;->VH:[Lcom/aide/uidesigner/N$a;

    array-length v3, v2
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_2d

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v3, :cond_2c

    aget-object v5, v2, v4

    :try_start_14
    sget-object v6, Lcom/aide/uidesigner/N;->v5:Lcom/aide/uidesigner/N$a;

    if-eq v5, v6, :cond_29

    sget-object v6, Lcom/aide/uidesigner/N;->Zo:Lcom/aide/uidesigner/N$a;

    if-eq v5, v6, :cond_29

    iget-object v6, v5, Lcom/aide/uidesigner/N$a;->Zo:Ljava/lang/String;

    invoke-interface {p1, v6}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_29

    iget-object v5, v5, Lcom/aide/uidesigner/N$a;->Zo:Ljava/lang/String;

    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->removeAttribute(Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_14 .. :try_end_29} :catchall_2d

    :cond_29
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_2c
    return-void

    :catchall_2d
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v3, :cond_35

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_35
    goto :goto_37

    :goto_36
    throw v2

    :goto_37
    goto :goto_36
.end method

.method private J0(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Integer;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x278d36d0456380a1L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0xc18dfce35f4913fL

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->we(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/String;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_dd

    const/4 p2, 0x0

    if-eqz p1, :cond_dc

    :try_start_13
    const-string v0, "px"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_30
    const-string v0, "dp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iget-object v0, p0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_5a
    const-string v0, "dip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_84

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iget-object v0, p0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_84
    const-string v0, "sp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ae

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iget-object v0, p0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_ae
    const-string v0, "@android:dimen/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_dc

    const-class v0, Landroid/R$dimen;

    const/16 v1, 0xf

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1
    :try_end_d6
    .catchall {:try_start_13 .. :try_end_d6} :catchall_db

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :catchall_db
    move-exception p1

    :cond_dc
    return-object p2

    :catchall_dd
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_ee

    const-wide v2, -0xc18dfce35f4913fL

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_ee
    throw v0
.end method

.method private J8(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/String;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x25a92c937341b52bL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x39d9bf76c2b69d8dL  # 5.077879087560335E-30

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->we(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/String;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return-object p1

    :catchall_11
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_22

    const-wide v2, 0x39d9bf76c2b69d8dL  # 5.077879087560335E-30

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v0
.end method

.method private QX(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Float;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x697790ef0bb7b58L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x5ad6e9d8c270e998L  # 3.970716655860417E129

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->J0(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget p1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F
    :try_end_23
    .catchall {:try_start_0 .. :try_end_23} :catchall_2b

    div-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_29
    const/4 p1, 0x0

    return-object p1

    :catchall_2b
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_3c

    const-wide v2, 0x5ad6e9d8c270e998L  # 3.970716655860417E129

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3c
    throw v0
.end method

.method private VH(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Integer;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x10b8a71c3236a86bL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x7c09f904fb1fd65L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->we(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4e

    const-string v1, "@+id/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aide/uidesigner/Pa;->VH:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    iget-object v0, p0, Lcom/aide/uidesigner/Pa;->VH:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0

    :cond_30
    const-string v1, "@id/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4e

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/uidesigner/Pa;->VH:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    iget-object v1, p0, Lcom/aide/uidesigner/Pa;->VH:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_4d
    .catchall {:try_start_0 .. :try_end_4d} :catchall_50

    return-object v0

    :cond_4e
    const/4 p1, 0x0

    return-object p1

    :catchall_50
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_61

    const-wide v2, 0x7c09f904fb1fd65L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_61
    throw v0
.end method

.method private Ws(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Object;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x1ec5d382aff5aba4L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x160cdf2528cd0820L  # -2.3426875469385685E202

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d4

    :cond_c
    const/4 v0, 0x0

    :try_start_d
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->EQ(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Lcom/aide/uidesigner/a;

    move-result-object p1

    iget-object p1, p1, Lcom/aide/uidesigner/a;->Hw:Ljava/lang/String;

    if-eqz p1, :cond_d3

    const-string v1, "?android:attr/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d3

    const-class v1, Landroid/R$attr;

    const/16 v2, 0xe

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object v1, Lcom/aide/uidesigner/Oa;->j6:[I

    iget-object v2, p2, Lcom/aide/uidesigner/N$a;->VH:Lcom/aide/uidesigner/N$b;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_e6

    iget-object v1, p0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    goto :goto_6b

    :pswitch_43  #0xc, 0xd, 0xe, 0xf
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    if-eqz p1, :cond_d3

    iget p1, p2, Landroid/util/TypedValue;->data:I

    iget-object p2, p0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :goto_6b
    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1
    :try_end_73
    .catchall {:try_start_d .. :try_end_73} :catchall_d2

    const/4 v1, 0x0

    :try_start_74
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_c9

    sget-object v2, Lcom/aide/uidesigner/Oa;->j6:[I

    iget-object p2, p2, Lcom/aide/uidesigner/N$a;->VH:Lcom/aide/uidesigner/N$b;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v2, p2

    packed-switch p2, :pswitch_data_f2

    goto :goto_c9

    :pswitch_88  #0x9
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2
    :try_end_8c
    .catchall {:try_start_74 .. :try_end_8c} :catchall_cd

    :try_start_8c
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_8f
    .catchall {:try_start_8c .. :try_end_8f} :catchall_d2

    return-object p2

    :pswitch_90  #0x7, 0x8
    :try_start_90
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2
    :try_end_94
    .catchall {:try_start_90 .. :try_end_94} :catchall_cd

    :try_start_94
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_97
    .catchall {:try_start_94 .. :try_end_97} :catchall_d2

    return-object p2

    :pswitch_98  #0x6
    :try_start_98
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2
    :try_end_9c
    .catchall {:try_start_98 .. :try_end_9c} :catchall_cd

    :try_start_9c
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_9f
    .catchall {:try_start_9c .. :try_end_9f} :catchall_d2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_a4  #0x5
    const/4 p2, 0x0

    :try_start_a5
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2
    :try_end_a9
    .catchall {:try_start_a5 .. :try_end_a9} :catchall_cd

    :try_start_a9
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_ac
    .catchall {:try_start_a9 .. :try_end_ac} :catchall_d2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :pswitch_b1  #0x2, 0x3, 0x4
    :try_start_b1
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2
    :try_end_b5
    .catchall {:try_start_b1 .. :try_end_b5} :catchall_cd

    :try_start_b5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_b8
    .catchall {:try_start_b5 .. :try_end_b8} :catchall_d2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_bd  #0x1
    :try_start_bd
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2
    :try_end_c1
    .catchall {:try_start_bd .. :try_end_c1} :catchall_cd

    :try_start_c1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_c9
    :goto_c9
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_d3

    :catchall_cd
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
    :try_end_d2
    .catchall {:try_start_c1 .. :try_end_d2} :catchall_d2

    :catchall_d2
    move-exception p1

    :cond_d3
    :goto_d3
    return-object v0

    :catchall_d4
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_e5

    const-wide v2, -0x160cdf2528cd0820L  # -2.3426875469385685E202

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_e5
    throw v0

    :pswitch_data_e6
    .packed-switch 0xc
        :pswitch_43  #0000000c
        :pswitch_43  #0000000d
        :pswitch_43  #0000000e
        :pswitch_43  #0000000f
    .end packed-switch

    :pswitch_data_f2
    .packed-switch 0x1
        :pswitch_bd  #00000001
        :pswitch_b1  #00000002
        :pswitch_b1  #00000003
        :pswitch_b1  #00000004
        :pswitch_a4  #00000005
        :pswitch_98  #00000006
        :pswitch_90  #00000007
        :pswitch_90  #00000008
        :pswitch_88  #00000009
    .end packed-switch
.end method

.method private XL()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1c6915ab03f9c9ecL
    .end annotation

    const-wide v0, 0x29816f5b89925830L  # 9.279686169838498E-109

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_55

    :cond_c
    const/4 v2, 0x0

    :try_start_d
    iput-object v2, p0, Lcom/aide/uidesigner/Pa;->we:Ljava/lang/Throwable;

    iget-object v3, p0, Lcom/aide/uidesigner/Pa;->Zo:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    iget-object v3, p0, Lcom/aide/uidesigner/Pa;->VH:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    iget-object v3, p0, Lcom/aide/uidesigner/Pa;->u7:Lcom/aide/uidesigner/la;

    invoke-virtual {v3}, Lcom/aide/uidesigner/la;->FH()V

    new-instance v3, Ljava/io/ByteArrayInputStream;

    iget-object v4, p0, Lcom/aide/uidesigner/Pa;->tp:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v3}, Lcom/aide/common/pa;->j6(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v4

    iput-object v4, p0, Lcom/aide/uidesigner/Pa;->EQ:Lorg/w3c/dom/Document;

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    iget-object v3, p0, Lcom/aide/uidesigner/Pa;->EQ:Lorg/w3c/dom/Document;

    invoke-interface {v3}, Lorg/w3c/dom/Document;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/aide/uidesigner/Pa;->j6(Lorg/w3c/dom/NodeList;)V
    :try_end_3b
    .catchall {:try_start_d .. :try_end_3b} :catchall_3c

    goto :goto_4f

    :catchall_3c
    move-exception v3

    :try_start_3d
    iput-object v3, p0, Lcom/aide/uidesigner/Pa;->we:Ljava/lang/Throwable;
    :try_end_3f
    .catchall {:try_start_3d .. :try_end_3f} :catchall_55

    :try_start_3f
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v3

    iput-object v3, p0, Lcom/aide/uidesigner/Pa;->EQ:Lorg/w3c/dom/Document;
    :try_end_4d
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3f .. :try_end_4d} :catch_4e
    .catchall {:try_start_3f .. :try_end_4d} :catchall_55

    goto :goto_4f

    :catch_4e
    move-exception v3

    :goto_4f
    :try_start_4f
    iput-object v2, p0, Lcom/aide/uidesigner/Pa;->QX:Lcom/aide/common/ab;

    invoke-direct {p0}, Lcom/aide/uidesigner/Pa;->aM()V
    :try_end_54
    .catchall {:try_start_4f .. :try_end_54} :catchall_55

    return-void

    :catchall_55
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v3, :cond_5d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_5d
    throw v2
.end method

.method private Zo(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Float;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x3319ec458699dae0L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x316812dfadc7b0a8L  # 1.090019664880413E-70

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->we(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/String;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_1e

    if-eqz p1, :cond_1c

    :try_start_12
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_1b

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :catchall_1b
    move-exception p1

    :cond_1c
    const/4 p1, 0x0

    return-object p1

    :catchall_1e
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_2f

    const-wide v2, 0x316812dfadc7b0a8L  # 1.090019664880413E-70

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2f
    throw v0
.end method

.method private aM()V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x2db207938d40c9f4L
    .end annotation

    const-wide v0, 0x162b767e8717c400L  # 7.007430678088876E-202

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/Pa;->v5:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-boolean v2, p0, Lcom/aide/uidesigner/Pa;->Ws:Z

    if-nez v2, :cond_1d

    iget-boolean v2, p0, Lcom/aide/uidesigner/Pa;->J8:Z

    if-eqz v2, :cond_1a

    goto :goto_1d

    :cond_1a
    iget-object v2, p0, Lcom/aide/uidesigner/Pa;->v5:Landroid/view/ViewGroup;

    goto :goto_3b

    :cond_1d
    :goto_1d
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v3, Lcom/aide/uidesigner/Ma;

    iget-object v4, p0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    invoke-direct {v3, p0, v4, v2}, Lcom/aide/uidesigner/Ma;-><init>(Lcom/aide/uidesigner/Pa;Landroid/content/Context;Landroid/view/View;)V

    iget-boolean v4, p0, Lcom/aide/uidesigner/Pa;->J8:Z

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v4, p0, Lcom/aide/uidesigner/Pa;->v5:Landroid/view/ViewGroup;

    const/4 v5, -0x1

    invoke-virtual {v4, v3, v5, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    :goto_3b
    iget-object v3, p0, Lcom/aide/uidesigner/Pa;->we:Ljava/lang/Throwable;

    iget-object v4, p0, Lcom/aide/uidesigner/Pa;->gn:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V
    :try_end_42
    .catchall {:try_start_5 .. :try_end_42} :catchall_d1

    if-nez v3, :cond_56

    :try_start_44
    iget-object v4, p0, Lcom/aide/uidesigner/Pa;->EQ:Lorg/w3c/dom/Document;

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, v4, v2, v5, v6}, Lcom/aide/uidesigner/Pa;->j6(Lorg/w3c/dom/NodeList;Landroid/view/ViewGroup;Lcom/aide/uidesigner/s;I)V

    iget-object v4, p0, Lcom/aide/uidesigner/Pa;->v5:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->invalidate()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_54} :catch_55
    .catchall {:try_start_44 .. :try_end_54} :catchall_d1

    goto :goto_56

    :catch_55
    move-exception v3

    :cond_56
    :goto_56
    if-eqz v3, :cond_cd

    :try_start_58
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "no element"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8a

    iget-boolean v3, p0, Lcom/aide/uidesigner/Pa;->J8:Z

    if-eqz v3, :cond_7e

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v3
    :try_end_73
    .catchall {:try_start_58 .. :try_end_73} :catchall_d1

    if-eqz v3, :cond_78

    const-string v3, "没有添加任何视图，点击以添加视图。"

    goto :goto_7a

    .line 99
    :cond_78
    const-string v3, "No views have been added. Tap to add views."

    .line 0
    :goto_7a
    :try_start_7a
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_ae

    :cond_7e
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v3
    :try_end_82
    .catchall {:try_start_7a .. :try_end_82} :catchall_d1

    if-eqz v3, :cond_87

    const-string v3, "没有添加任何视图。"

    goto :goto_7a

    .line 99
    :cond_87
    const-string v3, "No views have been added."

    goto :goto_7a

    .line 0
    :cond_8a
    :try_start_8a
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v5
    :try_end_8e
    .catchall {:try_start_8a .. :try_end_8e} :catchall_d1

    if-eqz v5, :cond_93

    const-string v5, "无法查看布局。"

    goto :goto_95

    .line 99
    :cond_93
    const-string v5, "Can not view the layout."

    .line 0
    :goto_95
    :try_start_95
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_7a

    :goto_ae
    iget-object v3, p0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x41200000  # 10.0f

    mul-float v3, v3, v5

    float-to-int v3, v3

    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v3, 0x41a00000  # 20.0f

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_cd
    invoke-virtual {p0}, Lcom/aide/uidesigner/Pa;->J0()V
    :try_end_d0
    .catchall {:try_start_95 .. :try_end_d0} :catchall_d1

    return-void

    .line 99
    :catchall_d1
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v3, :cond_d9

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_d9
    goto :goto_db

    :goto_da
    throw v2

    :goto_db
    goto :goto_da
.end method

.method private gn(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Integer;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x1169f2d19ecdb8c3L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x5704215078f7d9bL

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->we(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/String;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_1e

    if-eqz p1, :cond_1c

    :try_start_12
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_1b

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :catchall_1b
    move-exception p1

    :cond_1c
    const/4 p1, 0x0

    return-object p1

    :catchall_1e
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_2f

    const-wide v2, 0x5704215078f7d9bL

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2f
    throw v0
.end method

.method private j3()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x26bd855e546927e0L
    .end annotation

    const-wide v0, 0x3263ea835a3ca720L  # 5.909823791802614E-66

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/uidesigner/f;

    invoke-direct {v2}, Lcom/aide/uidesigner/f;-><init>()V

    iget-object v3, p0, Lcom/aide/uidesigner/Pa;->EQ:Lorg/w3c/dom/Document;

    invoke-virtual {v2, v3}, Lcom/aide/uidesigner/f;->j6(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/aide/uidesigner/Pa;->tp:Ljava/lang/String;

    iget-object v2, p0, Lcom/aide/uidesigner/Pa;->J0:Lcom/aide/common/UndoManager;

    invoke-virtual {p0}, Lcom/aide/uidesigner/Pa;->u7()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/aide/uidesigner/Pa;->tp:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/aide/common/UndoManager;->DW(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/aide/uidesigner/Pa;->XL()V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/aide/uidesigner/Pa;->j6(Z)V
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_2d

    return-void

    :catchall_2d
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v3, :cond_35

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_35
    throw v2
.end method

.method private j6(Lorg/w3c/dom/Node;Ljava/lang/String;)Landroid/view/View;
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x3694a0093411380dL
    .end annotation

    const-string v0, "."

    :try_start_2
    sget-boolean v1, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v1, :cond_e

    const-wide v1, -0x27875567cb6ab755L  # -1.5550480854975763E118

    invoke-static {v1, v2, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_e
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    return-object v2

    :cond_16
    const-string v1, "View"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_26
    iget-object v1, p0, Lcom/aide/uidesigner/Pa;->u7:Lcom/aide/uidesigner/la;

    move-object v3, p1

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v3}, Lcom/aide/uidesigner/Pa;->DW(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/aide/uidesigner/la;->FH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_33
    .catchall {:try_start_2 .. :try_end_33} :catchall_132

    const-string v3, "android.widget."

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v1, :cond_ab

    :try_start_3b
    const-string v8, "@android:style/"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8
    :try_end_41
    .catchall {:try_start_3b .. :try_end_41} :catchall_132

    if-eqz v8, :cond_ab

    :try_start_43
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Android_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0xf

    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "_"

    invoke-virtual {v9, v0, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, Lcom/aide/ui/Ma;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    new-array v9, v5, [Ljava/lang/Class;

    const-class v10, Landroid/content/Context;

    aput-object v10, v9, v6

    const-class v10, Landroid/util/AttributeSet;

    aput-object v10, v9, v7

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    new-array v9, v5, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    aput-object v10, v9, v6

    aput-object v2, v9, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_a9
    .catchall {:try_start_43 .. :try_end_a9} :catchall_aa

    return-object v0

    :catchall_aa
    move-exception v0

    :cond_ab
    if-eqz v1, :cond_106

    :try_start_ad
    const-string v0, "?android:attr/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1
    :try_end_b3
    .catchall {:try_start_ad .. :try_end_b3} :catchall_132

    if-eqz p1, :cond_106

    :try_start_b5
    const-class p1, Landroid/R$attr;

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    aput-object v8, v1, v6

    const-class v8, Landroid/util/AttributeSet;

    aput-object v8, v1, v7

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    aput-object v5, v1, v6

    aput-object v2, v1, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;
    :try_end_104
    .catchall {:try_start_b5 .. :try_end_104} :catchall_105

    return-object p1

    :catchall_105
    move-exception p1

    :cond_106
    :try_start_106
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    new-array p2, v7, [Ljava/lang/Class;

    const-class v0, Landroid/content/Context;

    aput-object v0, p2, v6

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array p2, v7, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    aput-object v0, p2, v6

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;
    :try_end_12f
    .catchall {:try_start_106 .. :try_end_12f} :catchall_130

    return-object p1

    :catchall_130
    move-exception p1

    return-object v2

    :catchall_132
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_143

    const-wide v2, -0x27875567cb6ab755L  # -1.5550480854975763E118

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_143
    throw v0
.end method

.method private j6(Lorg/w3c/dom/Node;Landroid/view/ViewGroup;)Lcom/aide/uidesigner/c;
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x561e60696318db7L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x1c78455487a50c99L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_e6

    :cond_c
    const/4 v0, -0x2

    :try_start_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "$LayoutParams"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_2a
    .catchall {:try_start_d .. :try_end_2a} :catchall_da

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_2d
    new-array v5, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v4

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-virtual {v5, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;
    :try_end_4f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2d .. :try_end_4f} :catch_50
    .catchall {:try_start_2d .. :try_end_4f} :catchall_da

    goto :goto_6c

    :catch_50
    move-exception v2

    :try_start_51
    new-array v2, v3, [Ljava/lang/Class;

    const-class v5, Landroid/view/ViewGroup$LayoutParams;

    aput-object v5, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v2, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v2, v5, v4

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    :goto_6c
    new-instance v1, Lcom/aide/uidesigner/c;

    invoke-direct {v1, v2}, Lcom/aide/uidesigner/c;-><init>(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/aide/uidesigner/Pa;->u7:Lcom/aide/uidesigner/la;

    move-object v6, p1

    check-cast v6, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v6}, Lcom/aide/uidesigner/Pa;->DW(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/aide/uidesigner/la;->FH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_d4

    const-string v6, "?android:attr/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6
    :try_end_86
    .catchall {:try_start_51 .. :try_end_86} :catchall_da

    if-eqz v6, :cond_d4

    :try_start_88
    const-class v6, Landroid/R$attr;

    const/16 v7, 0xe

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x10100f4

    const v8, 0x10100f5

    filled-new-array {v7, v8}, [I

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_c1

    const-string v6, "layout_width"

    invoke-virtual {v5, v4, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(ILjava/lang/String;)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_c1
    invoke-virtual {v5, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_cf

    const-string v4, "layout_height"

    invoke-virtual {v5, v3, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(ILjava/lang/String;)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_cf
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_d2
    .catchall {:try_start_88 .. :try_end_d2} :catchall_d3

    goto :goto_d4

    :catchall_d3
    move-exception v2

    :cond_d4
    :goto_d4
    :try_start_d4
    sget-object v2, Lcom/aide/uidesigner/N;->VH:[Lcom/aide/uidesigner/N$a;

    invoke-direct {p0, v1, p1, v2}, Lcom/aide/uidesigner/Pa;->j6(Lcom/aide/uidesigner/c;Lorg/w3c/dom/Node;[Lcom/aide/uidesigner/N$a;)V
    :try_end_d9
    .catchall {:try_start_d4 .. :try_end_d9} :catchall_da

    return-object v1

    :catchall_da
    move-exception v1

    :try_start_db
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    new-instance v0, Lcom/aide/uidesigner/c;

    invoke-direct {v0, v1}, Lcom/aide/uidesigner/c;-><init>(Ljava/lang/Object;)V
    :try_end_e5
    .catchall {:try_start_db .. :try_end_e5} :catchall_e6

    return-object v0

    :catchall_e6
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_f7

    const-wide v2, 0x1c78455487a50c99L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_f7
    throw v0
.end method

.method private j6(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Boolean;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x1428ee97a9d2c840L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x28deffd77015c490L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->we(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    const/4 p1, 0x0

    return-object p1

    :cond_14
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1f

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catchall_1f
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_30

    const-wide v2, 0x28deffd77015c490L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v0
.end method

.method private j6(Ljava/lang/String;Lcom/aide/uidesigner/N$a;)Ljava/lang/Integer;
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x198649e9e1788a59L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x298f1fdf3bd8466bL

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_7e

    :cond_c
    const/4 v0, 0x0

    :try_start_d
    iget-object v1, p2, Lcom/aide/uidesigner/N$a;->tp:Ljava/lang/String;

    if-nez v1, :cond_2a

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p2, Lcom/aide/uidesigner/N$a;->gn:Ljava/lang/Class;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_2a
    iget-object v1, p2, Lcom/aide/uidesigner/N$a;->gn:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1
    :try_end_31
    .catchall {:try_start_d .. :try_end_31} :catchall_7c

    const/4 v3, 0x0

    :goto_32
    if-ge v3, v2, :cond_7d

    aget-object v4, v1, v3

    :try_start_36
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_79

    iget-object v6, p2, Lcom/aide/uidesigner/N$a;->tp:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_79

    iget-object v6, p2, Lcom/aide/uidesigner/N$a;->tp:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "_"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_79

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_74
    .catchall {:try_start_36 .. :try_end_74} :catchall_7c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_79
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    :catchall_7c
    move-exception p1

    :cond_7d
    return-object v0

    :catchall_7e
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_8f

    const-wide v2, 0x298f1fdf3bd8466bL

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8f
    goto :goto_91

    :goto_90
    throw v0

    :goto_91
    goto :goto_90
.end method

.method private j6(Landroid/view/View;Z)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x20bb8bb3e7ec57d0L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x32f02ad788648a6cL  # 2.456290867952483E-63

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    if-eqz p2, :cond_5c

    iget-object v0, p0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41a00000  # 20.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setMinimumWidth(I)V

    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_3b
    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    if-eq v0, v1, :cond_4e

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/widget/Button;

    if-ne v0, v1, :cond_5c

    :cond_4e
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/widget/ListView;

    if-ne v0, v1, :cond_6a

    move-object v0, p1

    check-cast v0, Landroid/widget/ListView;

    invoke-direct {p0, v0}, Lcom/aide/uidesigner/Pa;->j6(Landroid/widget/ListView;)V

    :cond_6a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/widget/Spinner;

    if-ne v0, v1, :cond_78

    move-object v0, p1

    check-cast v0, Landroid/widget/Spinner;

    invoke-direct {p0, v0}, Lcom/aide/uidesigner/Pa;->j6(Landroid/widget/Spinner;)V

    :cond_78
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/widget/ExpandableListView;

    if-ne v0, v1, :cond_86

    move-object v0, p1

    check-cast v0, Landroid/widget/ExpandableListView;

    invoke-direct {p0, v0}, Lcom/aide/uidesigner/Pa;->j6(Landroid/widget/ExpandableListView;)V
    :try_end_86
    .catchall {:try_start_0 .. :try_end_86} :catchall_87

    :cond_86
    return-void

    :catchall_87
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_9c

    const-wide v2, 0x32f02ad788648a6cL  # 2.456290867952483E-63

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_9c
    throw v0
.end method

.method private j6(Landroid/widget/ExpandableListView;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0xfba9b0e1be29bL
    .end annotation

    const-wide v0, -0xa3f59b4b82ae809L  # -1.5999622210495513E259

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/uidesigner/Na;

    invoke-direct {v2, p0}, Lcom/aide/uidesigner/Na;-><init>(Lcom/aide/uidesigner/Pa;)V

    invoke-virtual {p1, v2}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method private j6(Landroid/widget/ListView;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x9f026b33c640000L
    .end annotation

    const-wide v0, 0x107da6ef67f310bcL

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_12
    const/16 v4, 0x1e

    if-ge v3, v4, :cond_2d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Item "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_2d
    new-instance v3, Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    const v5, 0x1090003

    invoke-direct {v3, v4, v5, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_3a
    .catchall {:try_start_5 .. :try_end_3a} :catchall_3b

    return-void

    :catchall_3b
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v3, :cond_43

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_43
    goto :goto_45

    :goto_44
    throw v2

    :goto_45
    goto :goto_44
.end method

.method private j6(Landroid/widget/Spinner;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x10841d74bad81dc8L
    .end annotation

    const-wide v0, 0x10bc7e59eb838938L  # 4.698400157833868E-228

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_12
    const/16 v4, 0x1e

    if-ge v3, v4, :cond_2d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Item "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_2d
    new-instance v3, Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    const v5, 0x1090003

    invoke-direct {v3, v4, v5, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p1, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V
    :try_end_3a
    .catchall {:try_start_5 .. :try_end_3a} :catchall_3b

    return-void

    :catchall_3b
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v3, :cond_43

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_43
    goto :goto_45

    :goto_44
    throw v2

    :goto_45
    goto :goto_44
.end method

.method private j6(Lcom/aide/uidesigner/c;Lorg/w3c/dom/Node;[Lcom/aide/uidesigner/N$a;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x1476c42373e60844L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x3a407702d7ac2de0L  # -9.759644718559141E27

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    array-length v0, p3
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_5e

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_5d

    aget-object v2, p3, v1

    :try_start_16
    invoke-virtual {p1, v2}, Lcom/aide/uidesigner/c;->j6(Lcom/aide/uidesigner/N$a;)Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-direct {p0, p2, v2}, Lcom/aide/uidesigner/Pa;->tp(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Object;

    move-result-object v3

    iget-boolean v4, p0, Lcom/aide/uidesigner/Pa;->J8:Z

    if-eqz v4, :cond_57

    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_57

    sget-object v4, Lcom/aide/uidesigner/N;->v5:Lcom/aide/uidesigner/N$a;

    if-eq v2, v4, :cond_30

    sget-object v4, Lcom/aide/uidesigner/N;->Zo:Lcom/aide/uidesigner/N$a;

    if-ne v2, v4, :cond_57

    :cond_30
    move-object v4, v3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_57

    iget-object v4, p0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x41200000  # 10.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    move-object v5, v3

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v5, v4, :cond_57

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_57
    invoke-virtual {p1, v2, v3}, Lcom/aide/uidesigner/c;->j6(Lcom/aide/uidesigner/N$a;Ljava/lang/Object;)V
    :try_end_5a
    .catchall {:try_start_16 .. :try_end_5a} :catchall_5e

    :cond_5a
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_5d
    return-void

    :catchall_5e
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_70

    const-wide v2, -0x3a407702d7ac2de0L  # -9.759644718559141E27

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_70
    goto :goto_72

    :goto_71
    throw v0

    :goto_72
    goto :goto_71
.end method

.method private j6(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x2e2c6a778ebd1650L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, 0x38d89b1cb6801f38L  # 7.404570758965967E-35

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    instance-of v0, p1, Lorg/w3c/dom/Element;

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    const/4 v2, 0x0

    :goto_1d
    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_39

    invoke-interface {v0, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Attr;

    invoke-interface {v3}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface {v3, p3}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_39
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    if-eqz v0, :cond_4f

    :goto_3f
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_4f

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-direct {p0, v2, p2, p3}, Lcom/aide/uidesigner/Pa;->j6(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4c
    .catchall {:try_start_0 .. :try_end_4c} :catchall_50

    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    :cond_4f
    return-void

    :catchall_50
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_62

    const-wide v2, 0x38d89b1cb6801f38L  # 7.404570758965967E-35

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_62
    goto :goto_64

    :goto_63
    throw v0

    :goto_64
    goto :goto_63
.end method

.method private j6(Lorg/w3c/dom/NodeList;)V
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x2b7e0a7fe11c468L
    .end annotation

    const-wide v0, -0x1b8300ac6fc2c2d8L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    :goto_d
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_4a

    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_47

    invoke-virtual {p0, v3}, Lcom/aide/uidesigner/Pa;->j6(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_40

    iget-object v5, p0, Lcom/aide/uidesigner/Pa;->VH:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_40

    iget-object v5, p0, Lcom/aide/uidesigner/Pa;->Zo:Ljava/util/Map;

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/aide/uidesigner/Pa;->VH:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v6

    add-int/lit8 v6, v6, 0x64

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_40
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/aide/uidesigner/Pa;->j6(Lorg/w3c/dom/NodeList;)V
    :try_end_47
    .catchall {:try_start_5 .. :try_end_47} :catchall_4b

    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_4a
    return-void

    :catchall_4b
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v3, :cond_53

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_53
    goto :goto_55

    :goto_54
    throw v2

    :goto_55
    goto :goto_54
.end method

.method private j6(Lorg/w3c/dom/NodeList;Landroid/view/ViewGroup;Lcom/aide/uidesigner/s;I)V
    .registers 24
    .annotation runtime Labcd/su;
        method = -0x28ed77fe334c96dL
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move/from16 v12, p4

    :try_start_6
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_1f

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v12}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x14924263dff8f6dL

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    const/4 v13, 0x0

    :goto_20
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v13, v1, :cond_114

    move-object/from16 v14, p1

    invoke-interface {v14, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_10e

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v15, v1}, Lcom/aide/uidesigner/Pa;->j6(Lorg/w3c/dom/Node;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4f

    iget-boolean v1, v10, Lcom/aide/uidesigner/Pa;->J8:Z

    invoke-direct {v10, v3, v1}, Lcom/aide/uidesigner/Pa;->j6(Landroid/view/View;Z)V

    new-instance v1, Lcom/aide/uidesigner/c;

    invoke-direct {v1, v3}, Lcom/aide/uidesigner/c;-><init>(Ljava/lang/Object;)V

    sget-object v4, Lcom/aide/uidesigner/N;->gn:[Lcom/aide/uidesigner/N$a;

    invoke-direct {v10, v1, v15, v4}, Lcom/aide/uidesigner/Pa;->j6(Lcom/aide/uidesigner/c;Lorg/w3c/dom/Node;[Lcom/aide/uidesigner/N$a;)V

    move-object v5, v1

    move-object v9, v3

    goto :goto_96

    :cond_4f
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, v10, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v10, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x40a00000  # 5.0f

    mul-float v1, v1, v4

    float-to-int v1, v1

    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-boolean v1, v10, Lcom/aide/uidesigner/Pa;->J8:Z

    if-eqz v1, :cond_88

    iget-object v1, v10, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x41a00000  # 20.0f

    mul-float v1, v1, v4

    float-to-int v1, v1

    invoke-virtual {v3, v1}, Landroid/view/View;->setMinimumHeight(I)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setMinimumWidth(I)V

    :cond_88
    new-instance v1, Landroid/view/View;

    iget-object v4, v10, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/aide/uidesigner/c;

    invoke-direct {v4, v1}, Lcom/aide/uidesigner/c;-><init>(Ljava/lang/Object;)V

    move-object v9, v3

    move-object v5, v4

    :goto_96
    invoke-direct {v10, v15, v11}, Lcom/aide/uidesigner/Pa;->j6(Lorg/w3c/dom/Node;Landroid/view/ViewGroup;)Lcom/aide/uidesigner/c;

    move-result-object v8

    iget-boolean v1, v10, Lcom/aide/uidesigner/Pa;->J8:Z

    if-eqz v1, :cond_b1

    instance-of v1, v9, Landroid/widget/TableRow;

    if-nez v1, :cond_b1

    iget-object v1, v10, Lcom/aide/uidesigner/Pa;->QX:Lcom/aide/common/ab;

    if-eqz v1, :cond_ae

    iget-object v1, v10, Lcom/aide/uidesigner/Pa;->XL:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b1

    :cond_ae
    const/16 v16, 0x1

    goto :goto_b3

    :cond_b1
    const/16 v16, 0x0

    :goto_b3
    new-instance v7, Lcom/aide/uidesigner/s;

    iget-object v2, v10, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    const/16 v17, 0x0

    if-eqz v16, :cond_bd

    move-object v3, v9

    goto :goto_bf

    :cond_bd
    move-object/from16 v3, v17

    :goto_bf
    move-object v4, v15

    check-cast v4, Lorg/w3c/dom/Element;

    move-object v1, v7

    move-object v6, v8

    move-object v0, v7

    move-object/from16 v7, p3

    move-object v14, v8

    move/from16 v8, p4

    move/from16 v18, v13

    move-object v13, v9

    move-object/from16 v9, p0

    invoke-direct/range {v1 .. v9}, Lcom/aide/uidesigner/s;-><init>(Landroid/content/Context;Landroid/view/View;Lorg/w3c/dom/Element;Lcom/aide/uidesigner/c;Lcom/aide/uidesigner/c;Lcom/aide/uidesigner/s;ILcom/aide/uidesigner/Pa;)V

    iget-object v1, v10, Lcom/aide/uidesigner/Pa;->gn:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v16, :cond_db

    move-object v9, v0

    goto :goto_dc

    :cond_db
    move-object v9, v13

    :goto_dc
    invoke-virtual {v10, v15}, Lcom/aide/uidesigner/Pa;->j6(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f1

    iget-object v2, v10, Lcom/aide/uidesigner/Pa;->VH:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v9, v1}, Landroid/view/View;->setId(I)V

    :cond_f1
    if-eqz v11, :cond_fa

    iget-object v1, v14, Lcom/aide/uidesigner/c;->FH:Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v11, v9, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_fa
    instance-of v1, v13, Landroid/view/ViewGroup;

    if-eqz v1, :cond_102

    move-object/from16 v17, v13

    check-cast v17, Landroid/view/ViewGroup;

    :cond_102
    move-object/from16 v1, v17

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    add-int/lit8 v3, v12, 0x1

    invoke-direct {v10, v2, v1, v0, v3}, Lcom/aide/uidesigner/Pa;->j6(Lorg/w3c/dom/NodeList;Landroid/view/ViewGroup;Lcom/aide/uidesigner/s;I)V
    :try_end_10d
    .catchall {:try_start_6 .. :try_end_10d} :catchall_115

    goto :goto_110

    :cond_10e
    move/from16 v18, v13

    :goto_110
    add-int/lit8 v13, v18, 0x1

    goto/16 :goto_20

    :cond_114
    return-void

    :catchall_115
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_130

    const-wide v2, -0x14924263dff8f6dL

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v12}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_130
    goto :goto_132

    :goto_131
    throw v0

    :goto_132
    goto :goto_131
.end method

.method static synthetic j6(Lcom/aide/uidesigner/Pa;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/aide/uidesigner/Pa;->J8:Z

    return p0
.end method

.method private tp(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Object;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x4f75828235366603L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x3d39c1afbd0dce31L  # -4.891378069616362E13

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->Ws(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    return-object v0

    :cond_13
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->FH(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Object;

    move-result-object p1
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_18

    return-object p1

    :catchall_18
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_29

    const-wide v2, -0x3d39c1afbd0dce31L  # -4.891378069616362E13

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_29
    throw v0
.end method

.method private u7(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Integer;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x1f134ea401161c7fL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x9d1495a353d3503L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->we(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_32

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1b
    if-ge v2, v1, :cond_2d

    aget-object v4, v0, v2

    invoke-direct {p0, v4, p2}, Lcom/aide/uidesigner/Pa;->j6(Ljava/lang/String;Lcom/aide/uidesigner/N$a;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_2a

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_29
    .catchall {:try_start_0 .. :try_end_29} :catchall_34

    or-int/2addr v3, v4

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_2d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_32
    const/4 p1, 0x0

    return-object p1

    :catchall_34
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_45

    const-wide v2, -0x9d1495a353d3503L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_45
    goto :goto_47

    :goto_46
    throw v0

    :goto_47
    goto :goto_46
.end method

.method private v5(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Enum;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x127a927a6466356fL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            "Lcom/aide/uidesigner/N$a;",
            ")",
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x2de977438c1cbbcfL  # -2.801686063265122E87

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_49

    :cond_c
    const/4 v0, 0x0

    :try_start_d
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->we(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_48

    iget-object p2, p2, Lcom/aide/uidesigner/N$a;->gn:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object p2

    array-length v1, p2
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_47

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v1, :cond_48

    aget-object v3, p2, v2

    :try_start_1f
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_44

    const-string v5, "_"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Enum;
    :try_end_43
    .catchall {:try_start_1f .. :try_end_43} :catchall_47

    return-object p1

    :cond_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :catchall_47
    move-exception p1

    :cond_48
    return-object v0

    :catchall_49
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_5a

    const-wide v2, -0x2de977438c1cbbcfL  # -2.801686063265122E87

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5a
    goto :goto_5c

    :goto_5b
    throw v0

    :goto_5c
    goto :goto_5b
.end method

.method private we(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/String;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x383bb86924c711f7L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x2039c4b543ae709fL  # 1.92189439240101E-153

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/uidesigner/Pa;->u7:Lcom/aide/uidesigner/la;

    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->EQ(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Lcom/aide/uidesigner/a;

    move-result-object v1

    iget-object v1, v1, Lcom/aide/uidesigner/a;->Hw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aide/uidesigner/la;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_19

    return-object p1

    :catchall_19
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_2a

    const-wide v2, 0x2039c4b543ae709fL  # 1.92189439240101E-153

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2a
    throw v0
.end method


# virtual methods
.method public DW(Lorg/w3c/dom/Element;)Ljava/lang/String;
    .registers 6

    const-wide v0, 0xf34fbc8ae0e9365L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    const-string v3, "style"

    invoke-interface {v2, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    instance-of v3, v2, Lorg/w3c/dom/Attr;

    if-eqz v3, :cond_21

    check-cast v2, Lorg/w3c/dom/Attr;

    invoke-interface {v2}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object p1
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_23

    return-object p1

    :cond_21
    const/4 p1, 0x0

    return-object p1

    :catchall_23
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v3, :cond_2b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v2
.end method

.method public DW()V
    .registers 5

    const-wide v0, -0x6c553903490efbb8L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public DW(Lcom/aide/uidesigner/s;)V
    .registers 6

    const-wide v0, 0x4cc4103e825fa00L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/Pa;->QX:Lcom/aide/common/ab;

    if-eqz v2, :cond_1a

    invoke-interface {v2, p1}, Lcom/aide/common/ab;->j6(Ljava/lang/Object;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aide/uidesigner/Pa;->QX:Lcom/aide/common/ab;

    invoke-direct {p0}, Lcom/aide/uidesigner/Pa;->aM()V

    goto :goto_1d

    :cond_1a
    invoke-virtual {p0, p1}, Lcom/aide/uidesigner/Pa;->j6(Lcom/aide/uidesigner/s;)V
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1e

    :goto_1d
    return-void

    :catchall_1e
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v3, :cond_26

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v2
.end method

.method public DW(Lorg/w3c/dom/Element;Lcom/aide/uidesigner/b;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x3ee128c07ec9e8d8L  # 8.182138082836137E-6

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const-string v0, "UI Designer: Add view behind"

    invoke-static {v0}, Labcd/F;->j6(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/aide/uidesigner/Pa;->DW(Lcom/aide/uidesigner/b;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_27

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_2e

    :cond_27
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :goto_2e
    invoke-direct {p0}, Lcom/aide/uidesigner/Pa;->j3()V
    :try_end_31
    .catchall {:try_start_0 .. :try_end_31} :catchall_32

    return-void

    :catchall_32
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_43

    const-wide v2, 0x3ee128c07ec9e8d8L  # 8.182138082836137E-6

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_43
    throw v0
.end method

.method public DW(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .registers 10

    const-string v0, "@id/"

    :try_start_2
    sget-boolean v1, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v1, :cond_e

    const-wide v1, 0x922013ede2355b0L

    invoke-static {v1, v2, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_e
    const-string v1, "UI Designer: Set view ID"

    const-string v2, "id"

    invoke-static {v2, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v2}, Labcd/F;->j6(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_62

    const-string v1, "android:id"

    if-nez p2, :cond_21

    :try_start_1d
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->removeAttribute(Ljava/lang/String;)V

    goto :goto_5e

    :cond_21
    invoke-virtual {p0, p1}, Lcom/aide/uidesigner/Pa;->j6(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@+id/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_5e

    iget-object v1, p0, Lcom/aide/uidesigner/Pa;->EQ:Lorg/w3c/dom/Document;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/aide/uidesigner/Pa;->j6(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5e
    :goto_5e
    invoke-direct {p0}, Lcom/aide/uidesigner/Pa;->j3()V
    :try_end_61
    .catchall {:try_start_1d .. :try_end_61} :catchall_62

    return-void

    :catchall_62
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_73

    const-wide v2, 0x922013ede2355b0L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_73
    throw v0
.end method

.method public DW(Z)V
    .registers 6

    const-wide v0, -0x1b5d1ff5e10e0af1L  # -5.975551390238326E176

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    iput-boolean p1, p0, Lcom/aide/uidesigner/Pa;->J8:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aide/uidesigner/Pa;->QX:Lcom/aide/common/ab;

    invoke-direct {p0}, Lcom/aide/uidesigner/Pa;->aM()V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v3, :cond_22

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public EQ()V
    .registers 7

    const-wide v0, -0x1e28a2453ac7e355L  # -2.1024441942120992E163

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/Pa;->Hw:Ljava/lang/String;

    invoke-static {v2}, Lcom/aide/uidesigner/e;->FH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/aide/uidesigner/Pa;->tp:Ljava/lang/String;

    iget-object v2, p0, Lcom/aide/uidesigner/Pa;->J0:Lcom/aide/common/UndoManager;

    invoke-virtual {p0}, Lcom/aide/uidesigner/Pa;->u7()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/aide/uidesigner/Pa;->tp:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/aide/common/UndoManager;->j6(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/aide/uidesigner/Pa;->XL()V
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_24

    return-void

    :catchall_24
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v3, :cond_2c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2c
    throw v2
.end method

.method public FH(Lorg/w3c/dom/Element;)Ljava/lang/String;
    .registers 10

    const-wide v0, 0xa71644a5c6f2754L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/Pa;->Hw:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_83

    const-string v3, ""

    if-nez v2, :cond_13

    goto :goto_24

    :cond_13
    :try_start_13
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/aide/uidesigner/Pa;->Hw:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "_"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    :goto_24
    const/16 v2, 0x2e

    invoke-virtual {v3, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_36

    invoke-virtual {v3, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_36
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v5, :cond_4a

    invoke-virtual {v4, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/2addr v2, v7

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :cond_4a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_59
    iget-object v3, p0, Lcom/aide/uidesigner/Pa;->Zo:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_73

    add-int/lit8 v7, v7, 0x1

    goto :goto_59

    :cond_73
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_82
    .catchall {:try_start_13 .. :try_end_82} :catchall_83

    return-object p1

    :catchall_83
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v3, :cond_8b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_8b
    goto :goto_8d

    :goto_8c
    throw v2

    :goto_8d
    goto :goto_8c
.end method

.method public FH()V
    .registers 5

    const-wide v0, -0x1e3fca4c38fe30d8L  # -7.292637781199997E162

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/text/ClipboardManager;

    invoke-virtual {p0}, Lcom/aide/uidesigner/Pa;->gn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1e

    return-void

    :catchall_1e
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v3, :cond_26

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_26
    throw v2
.end method

.method public FH(Lorg/w3c/dom/Element;Lcom/aide/uidesigner/b;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x50199b758b5e4180L  # -6.043358027570658E-78

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const-string v0, "UI Designer: Add view inside"

    invoke-static {v0}, Labcd/F;->j6(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/aide/uidesigner/Pa;->DW(Lcom/aide/uidesigner/b;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-direct {p0}, Lcom/aide/uidesigner/Pa;->j3()V
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_2d

    const-wide v2, -0x50199b758b5e4180L  # -6.043358027570658E-78

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2d
    throw v0
.end method

.method public FH(Z)V
    .registers 6

    const-wide v0, -0x1c0773df88179749L  # -3.7945693644650516E173

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    iput-boolean p1, p0, Lcom/aide/uidesigner/Pa;->Ws:Z

    invoke-direct {p0}, Lcom/aide/uidesigner/Pa;->aM()V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v3, :cond_1f

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public Hw()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide v0, -0x2af44200ab3f2744L  # -4.854327791276645E101

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/aide/uidesigner/Pa;->Zo:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    return-object v2

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public Hw(Lorg/w3c/dom/Element;Lcom/aide/uidesigner/b;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x293842f6bf083e5L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const-string v0, "UI Designer: Surrount with view"

    invoke-static {v0}, Labcd/F;->j6(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/aide/uidesigner/Pa;->DW(Lcom/aide/uidesigner/b;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v1, p1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    if-eqz v2, :cond_26

    invoke-interface {v1, v0, v2}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_29

    :cond_26
    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :goto_29
    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-direct {p0, p1}, Lcom/aide/uidesigner/Pa;->Hw(Lorg/w3c/dom/Element;)V

    invoke-direct {p0}, Lcom/aide/uidesigner/Pa;->j3()V
    :try_end_32
    .catchall {:try_start_0 .. :try_end_32} :catchall_33

    return-void

    :catchall_33
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_44

    const-wide v2, 0x293842f6bf083e5L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_44
    throw v0
.end method

.method protected abstract J0()V
.end method

.method public J8()V
    .registers 7

    const-wide v0, 0x144c6fa3bfc52230L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/text/ClipboardManager;

    invoke-virtual {v2}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/aide/uidesigner/Pa;->tp:Ljava/lang/String;

    iget-object v2, p0, Lcom/aide/uidesigner/Pa;->J0:Lcom/aide/common/UndoManager;

    invoke-virtual {p0}, Lcom/aide/uidesigner/Pa;->u7()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/aide/uidesigner/Pa;->tp:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/aide/common/UndoManager;->DW(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/aide/uidesigner/Pa;->XL()V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/aide/uidesigner/Pa;->j6(Z)V
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_34

    return-void

    :catchall_34
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v3, :cond_3c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3c
    throw v2
.end method

.method public QX()Ljava/lang/String;
    .registers 5

    const-wide v0, -0x47cf17b011d9fa9L  # -9.068051257490178E286

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/Pa;->u7:Lcom/aide/uidesigner/la;

    invoke-virtual {v2}, Lcom/aide/uidesigner/la;->Hw()Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-object v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public VH()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aide/uidesigner/s;",
            ">;"
        }
    .end annotation

    const-wide v0, -0x3cbd3401acc02ddbL  # -1.0581685519230026E16

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/aide/uidesigner/Pa;->gn:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-object v2

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public Ws()V
    .registers 6

    const-wide v0, 0x15fc94f98e3ddbd0L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-ge v2, v3, :cond_41

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "application/xml"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/aide/uidesigner/Pa;->Hw:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.extra.STREAM"

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.SUBJECT"

    const-string v4, "XML Layout"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.TEXT"

    const-string v4, "Attached..."

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_41
    .catchall {:try_start_5 .. :try_end_41} :catchall_42

    :cond_41
    return-void

    :catchall_42
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v3, :cond_4a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4a
    throw v2
.end method

.method public Zo()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide v0, -0x457600b3a1510d45L  # -1.0500209314073873E-26

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/Pa;->u7:Lcom/aide/uidesigner/la;

    invoke-virtual {v2}, Lcom/aide/uidesigner/la;->DW()Ljava/util/List;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-object v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public gn()Ljava/lang/String;
    .registers 5

    const-wide v0, 0x52e3aaf59cd5d7cL

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/uidesigner/Pa;->tp:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public j6(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 6

    const-wide v0, -0xd0b6452d39583bfL  # -5.628525883473291E245

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    const-string v3, "android:id"

    invoke-interface {v2, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    instance-of v3, v2, Lorg/w3c/dom/Attr;

    if-eqz v3, :cond_30

    check-cast v2, Lorg/w3c/dom/Attr;

    invoke-interface {v2}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_30

    const-string v3, "@+id/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_32

    return-object p1

    :cond_30
    const/4 p1, 0x0

    return-object p1

    :catchall_32
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v3, :cond_3a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3a
    throw v2
.end method

.method public j6(Lcom/aide/uidesigner/c;Lcom/aide/uidesigner/c;Lorg/w3c/dom/Element;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aide/uidesigner/c;",
            "Lcom/aide/uidesigner/c;",
            "Lorg/w3c/dom/Element;",
            ")",
            "Ljava/util/List<",
            "Lcom/aide/uidesigner/a;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, 0xaee45087dff1cbL

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/aide/uidesigner/N;->u7:[Lcom/aide/uidesigner/N$a;

    array-length v2, v1
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_97

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v2, :cond_3d

    aget-object v4, v1, v3

    :try_start_1d
    iget-boolean v5, v4, Lcom/aide/uidesigner/N$a;->EQ:Z

    if-eqz v5, :cond_2f

    invoke-virtual {p2, v4}, Lcom/aide/uidesigner/c;->j6(Lcom/aide/uidesigner/N$a;)Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-direct {p0, p3, v4}, Lcom/aide/uidesigner/Pa;->EQ(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Lcom/aide/uidesigner/a;

    move-result-object v4

    :goto_2b
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    :cond_2f
    invoke-virtual {p1, v4}, Lcom/aide/uidesigner/c;->j6(Lcom/aide/uidesigner/N$a;)Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-direct {p0, p3, v4}, Lcom/aide/uidesigner/Pa;->EQ(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Lcom/aide/uidesigner/a;

    move-result-object v4

    goto :goto_2b

    :cond_3a
    :goto_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_3d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_46
    :goto_46
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_62

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/uidesigner/a;

    invoke-virtual {v3}, Lcom/aide/uidesigner/a;->DW()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-virtual {v3}, Lcom/aide/uidesigner/a;->FH()Z

    move-result v4

    if-nez v4, :cond_46

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_46

    :cond_62
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_66
    :goto_66
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/uidesigner/a;

    invoke-virtual {v3}, Lcom/aide/uidesigner/a;->FH()Z

    move-result v4

    if-eqz v4, :cond_66

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_66

    :cond_7c
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_80
    :goto_80
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_96

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/uidesigner/a;

    invoke-virtual {v2}, Lcom/aide/uidesigner/a;->DW()Z

    move-result v3

    if-nez v3, :cond_80

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_95
    .catchall {:try_start_1d .. :try_end_95} :catchall_97

    goto :goto_80

    :cond_96
    return-object v1

    :catchall_97
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_a9

    const-wide v2, 0xaee45087dff1cbL

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a9
    goto :goto_ab

    :goto_aa
    throw v0

    :goto_ab
    goto :goto_aa
.end method

.method public j6(Lcom/aide/uidesigner/b;)V
    .registers 6

    const-wide v0, -0x6a3b266b5ea5c61L  # -3.919677658943115E276

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const-string v2, "UI Designer: Add view"

    invoke-static {v2}, Labcd/F;->j6(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aide/uidesigner/Pa;->EQ:Lorg/w3c/dom/Document;

    invoke-direct {p0, p1}, Lcom/aide/uidesigner/Pa;->DW(Lcom/aide/uidesigner/b;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-direct {p0}, Lcom/aide/uidesigner/Pa;->j3()V
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1e

    return-void

    :catchall_1e
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v3, :cond_26

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v2
.end method

.method protected abstract j6(Lcom/aide/uidesigner/s;)V
.end method

.method public j6(Ljava/lang/String;)V
    .registers 7

    const-wide v0, 0x15ac28ef4fa64181L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iput-object p1, p0, Lcom/aide/uidesigner/Pa;->Hw:Ljava/lang/String;

    iget-object v2, p0, Lcom/aide/uidesigner/Pa;->J0:Lcom/aide/common/UndoManager;

    iget-object v3, p0, Lcom/aide/uidesigner/Pa;->tp:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, v4}, Lcom/aide/common/UndoManager;->j6(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/aide/uidesigner/Pa;->XL()V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public j6(Ljava/lang/String;Landroid/content/Intent;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x659689ec555af713L  # 2.338123638276122E181

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/uidesigner/Pa;->u7:Lcom/aide/uidesigner/la;

    invoke-virtual {v0, p1, p2}, Lcom/aide/uidesigner/la;->j6(Ljava/lang/String;Landroid/content/Intent;)V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_23

    const-wide v2, 0x659689ec555af713L  # 2.338123638276122E181

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    throw v0
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_14

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x2158ab741f8ad533L  # -9.322394023117829E147

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    invoke-virtual {p0}, Lcom/aide/uidesigner/Pa;->u7()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iput-object p2, p0, Lcom/aide/uidesigner/Pa;->tp:Ljava/lang/String;

    invoke-direct {p0}, Lcom/aide/uidesigner/Pa;->XL()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/aide/uidesigner/Pa;->j6(Z)V
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_28

    :cond_27
    return-void

    :catchall_28
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_3e

    const-wide v2, -0x2158ab741f8ad533L  # -9.322394023117829E147

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3e
    throw v0
.end method

.method public j6(Lorg/w3c/dom/Element;)V
    .registers 6

    const-wide v0, 0x2c0f154c7487a8cL

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const-string v2, "UI Designer: Delete view"

    invoke-static {v2}, Labcd/F;->j6(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2, p1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-direct {p0}, Lcom/aide/uidesigner/Pa;->j3()V
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v3, :cond_24

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    throw v2
.end method

.method public j6(Lorg/w3c/dom/Element;Lcom/aide/common/ab;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            "Lcom/aide/common/ab<",
            "Lcom/aide/uidesigner/s;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x3a0714e237cce880L  # -1.2339005511968143E29

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iput-object p2, p0, Lcom/aide/uidesigner/Pa;->QX:Lcom/aide/common/ab;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aide/uidesigner/Pa;->XL:Ljava/util/ArrayList;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1e
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_3d

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    instance-of v3, v2, Lorg/w3c/dom/Element;

    if-eqz v3, :cond_3a

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    goto :goto_3d

    :cond_33
    iget-object v3, p0, Lcom/aide/uidesigner/Pa;->XL:Ljava/util/ArrayList;

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_3d
    :goto_3d
    invoke-direct {p0}, Lcom/aide/uidesigner/Pa;->aM()V
    :try_end_40
    .catchall {:try_start_0 .. :try_end_40} :catchall_41

    return-void

    :catchall_41
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_52

    const-wide v2, -0x3a0714e237cce880L  # -1.2339005511968143E29

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_52
    goto :goto_54

    :goto_53
    throw v0

    :goto_54
    goto :goto_53
.end method

.method public j6(Lorg/w3c/dom/Element;Lcom/aide/uidesigner/N$a;Ljava/lang/String;)V
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, 0x4fe73d3e45757e0L

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attrName"

    iget-object v2, p2, Lcom/aide/uidesigner/N$a;->Zo:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "value"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "UI Designer: Set attribute"

    invoke-static {v1, v0}, Labcd/F;->j6(Ljava/lang/String;Ljava/util/Map;)V

    if-nez p3, :cond_2e

    iget-object v0, p2, Lcom/aide/uidesigner/N$a;->Zo:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->removeAttribute(Ljava/lang/String;)V

    goto :goto_33

    :cond_2e
    iget-object v0, p2, Lcom/aide/uidesigner/N$a;->Zo:Ljava/lang/String;

    invoke-interface {p1, v0, p3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :goto_33
    invoke-direct {p0}, Lcom/aide/uidesigner/Pa;->j3()V
    :try_end_36
    .catchall {:try_start_0 .. :try_end_36} :catchall_37

    return-void

    :catchall_37
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_49

    const-wide v2, 0x4fe73d3e45757e0L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_49
    throw v0
.end method

.method public j6(Lorg/w3c/dom/Element;Lcom/aide/uidesigner/N$a;Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .registers 14

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_11

    const-wide v1, 0x2d1fb9f55042a5cL

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p2, Lcom/aide/uidesigner/N$a;->Zo:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_3f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@+id/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android:id"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v1, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3f
    invoke-direct {p0}, Lcom/aide/uidesigner/Pa;->j3()V
    :try_end_42
    .catchall {:try_start_0 .. :try_end_42} :catchall_43

    return-void

    :catchall_43
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_56

    const-wide v2, 0x2d1fb9f55042a5cL

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_56
    throw v0
.end method

.method public j6(Lorg/w3c/dom/Element;Lcom/aide/uidesigner/b;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x11593f8a5b8187e9L  # -1.052694722967265E225

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const-string v0, "UI Designer: Add view before"

    invoke-static {v0}, Labcd/F;->j6(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/aide/uidesigner/Pa;->DW(Lcom/aide/uidesigner/b;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-direct {p0}, Lcom/aide/uidesigner/Pa;->j3()V
    :try_end_1f
    .catchall {:try_start_0 .. :try_end_1f} :catchall_20

    return-void

    :catchall_20
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_31

    const-wide v2, -0x11593f8a5b8187e9L  # -1.052694722967265E225

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v0
.end method

.method public j6(Lorg/w3c/dom/Element;Lcom/aide/uidesigner/b;Lorg/w3c/dom/Element;Lcom/aide/uidesigner/N$a;Ljava/lang/String;)V
    .registers 16

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_12

    const-wide v1, 0x1307bb33611618dL

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    const-string v0, "UI Designer: Add view inside"

    invoke-static {v0}, Labcd/F;->j6(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/aide/uidesigner/Pa;->DW(Lcom/aide/uidesigner/b;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v1, p4, Lcom/aide/uidesigner/N$a;->Zo:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@id/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@+id/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android:id"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v1, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/aide/uidesigner/Pa;->j3()V
    :try_end_4d
    .catchall {:try_start_0 .. :try_end_4d} :catchall_4e

    return-void

    :catchall_4e
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_62

    const-wide v2, 0x1307bb33611618dL

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_62
    throw v0
.end method

.method public j6(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .registers 10

    const-string v0, "style"

    :try_start_2
    sget-boolean v1, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v1, :cond_e

    const-wide v1, 0x50f52d9a425b63fL

    invoke-static {v1, v2, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_e
    const-string v1, "UI Designer: Set style"

    invoke-static {v0, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v2}, Labcd/F;->j6(Ljava/lang/String;Ljava/util/Map;)V

    if-nez p2, :cond_1d

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->removeAttribute(Ljava/lang/String;)V

    goto :goto_20

    :cond_1d
    invoke-interface {p1, v0, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :goto_20
    invoke-direct {p0}, Lcom/aide/uidesigner/Pa;->j3()V
    :try_end_23
    .catchall {:try_start_2 .. :try_end_23} :catchall_24

    return-void

    :catchall_24
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_35

    const-wide v2, 0x50f52d9a425b63fL

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_35
    throw v0
.end method

.method protected abstract j6(Z)V
.end method

.method public j6()Z
    .registers 6

    const-wide v0, 0x2a7e68619b21c6a0L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/text/ClipboardManager;

    invoke-virtual {v2}, Landroid/text/ClipboardManager;->hasText()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2a

    invoke-virtual {v2}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_2b

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_2a

    const/4 v4, 0x1

    :cond_2a
    return v4

    :catchall_2b
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v3, :cond_33

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_33
    throw v2
.end method

.method public tp()Z
    .registers 5

    const-wide v0, 0x286544bed1ff5ac0L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/Pa;->EQ:Lorg/w3c/dom/Document;

    invoke-interface {v2}, Lorg/w3c/dom/Document;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_1c

    if-lez v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0

    :catchall_1c
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v3, :cond_24

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_24
    throw v2
.end method

.method public u7()Ljava/lang/String;
    .registers 5

    const-wide v0, 0x2865f72b94030293L  # 4.459774680636018E-114

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/uidesigner/Pa;->Hw:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public v5()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide v0, -0xcc30e35005af318L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/Pa;->u7:Lcom/aide/uidesigner/la;

    invoke-virtual {v2}, Lcom/aide/uidesigner/la;->j6()Ljava/util/List;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-object v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method protected abstract we()V
.end method
