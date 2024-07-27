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
            "Lcom/aide/common/ab",
            "<",
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
            "Ljava/util/Map",
            "<",
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
            "Ljava/util/ArrayList",
            "<",
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
            "Ljava/util/Map",
            "<",
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
            "Ljava/util/List",
            "<",
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
    .registers 4

    const-wide v2, -0x14e43586bd4fe1d1L    # -8.922361944275119E207

    const-class v0, Lcom/aide/uidesigner/Pa;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Lcom/aide/common/UndoManager;)V
    .registers 15

    const-wide v8, 0x16a399d64887fd87L

    const/4 v7, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x16a399d64887fd87L

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
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
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v0, :cond_1

    move-wide v2, v8

    move-object v4, v7

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method static synthetic DW(Lcom/aide/uidesigner/Pa;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    return-object v0
.end method

.method private DW(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Integer;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x1bd13e8b19fc39abL
    .end annotation

    const-wide v2, 0x19ebd943452c89f3L    # 8.192516318907971E-184

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v4, 0x19ebd943452c89f3L    # 8.192516318907971E-184

    invoke-static {v4, v5, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->we(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x7

    if-ne v0, v4, :cond_1

    const-wide/32 v4, -0x1000000

    or-long/2addr v2, v4

    :cond_1
    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    const-string v2, "@android:color/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-class v2, Landroid/R$color;

    const/16 v3, 0xf

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_3
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v0, :cond_4

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1
.end method

.method private DW(Lcom/aide/uidesigner/b;)Lorg/w3c/dom/Element;
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x209975b6f5ff2833L
    .end annotation

    const-wide v4, 0x34800bcb299fe46fL    # 8.180115953699827E-56

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x34800bcb299fe46fL    # 8.180115953699827E-56

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/Pa;->EQ:Lorg/w3c/dom/Document;

    iget-object v1, p1, Lcom/aide/uidesigner/b;->FH:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    iget-object v0, p1, Lcom/aide/uidesigner/b;->Hw:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v1, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    return-object v2
.end method

.method private EQ(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Lcom/aide/uidesigner/a;
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x65d503ab8e540ec7L
    .end annotation

    const-wide v4, 0x566c55db66e32715L    # 2.079588884851976E108

    :try_start_0
    sget-boolean v2, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v2, :cond_0

    const-wide v2, 0x566c55db66e32715L    # 2.079588884851976E108

    invoke-static {v2, v3, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    iget-object v3, p2, Lcom/aide/uidesigner/N$a;->Zo:Ljava/lang/String;

    invoke-interface {v2, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    instance-of v3, v2, Lorg/w3c/dom/Attr;

    if-eqz v3, :cond_1

    new-instance v3, Lcom/aide/uidesigner/a;

    check-cast v2, Lorg/w3c/dom/Attr;

    invoke-direct {v3, p2, v2}, Lcom/aide/uidesigner/a;-><init>(Lcom/aide/uidesigner/N$a;Lorg/w3c/dom/Attr;)V

    move-object v2, v3

    :goto_0
    return-object v2

    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v2, v0

    invoke-virtual {p0, v2}, Lcom/aide/uidesigner/Pa;->DW(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/aide/uidesigner/Pa;->u7:Lcom/aide/uidesigner/la;

    invoke-virtual {v3, v2, p2}, Lcom/aide/uidesigner/la;->j6(Ljava/lang/String;Lcom/aide/uidesigner/N$a;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    new-instance v2, Lcom/aide/uidesigner/a;

    invoke-direct {v2, p2, v3}, Lcom/aide/uidesigner/a;-><init>(Lcom/aide/uidesigner/N$a;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    sget-boolean v2, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v2, :cond_2

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    invoke-static/range {v3 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v3

    :cond_3
    :try_start_1
    new-instance v2, Lcom/aide/uidesigner/a;

    invoke-direct {v2, p2}, Lcom/aide/uidesigner/a;-><init>(Lcom/aide/uidesigner/N$a;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private FH(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Object;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x4fe32b6b75880198L
    .end annotation

    const-wide v2, 0x401dae9e1cc75438L    # 7.420525026002956

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v1, :cond_0

    const-wide v4, 0x401dae9e1cc75438L    # 7.420525026002956

    invoke-static {v4, v5, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    sget-object v1, Lcom/aide/uidesigner/Oa;->j6:[I

    iget-object v4, p2, Lcom/aide/uidesigner/N$a;->VH:Lcom/aide/uidesigner/N$b;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_0
    return-object v0

    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->J0(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v0, :cond_2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1

    :pswitch_1
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->J0(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->u7(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v0, v1

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->QX(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->J0(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->we(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->v5(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Enum;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->J8(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->DW(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->Hw(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->Hw(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_9
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->DW(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_a
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->Zo(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :pswitch_b
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->u7(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_c
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->gn(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_d
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->VH(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_e
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->j6(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private Hw(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Object;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x691842f70bafed74L
    .end annotation

    const-wide v2, -0xae90987f35e47a0L

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v4, -0xae90987f35e47a0L

    invoke-static {v4, v5, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->we(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/aide/uidesigner/Pa;->u7:Lcom/aide/uidesigner/la;

    invoke-virtual {v0, v4}, Lcom/aide/uidesigner/la;->DW(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    return-object v0

    :cond_1
    if-eqz v4, :cond_2

    const-string v0, "@android:drawable/"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_2

    :try_start_1
    const-class v0, Landroid/R$drawable;

    const/16 v2, 0x12

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v0, :cond_3

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method

.method private Hw(Lorg/w3c/dom/Element;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x3d379a9ad0d61f3L
    .end annotation

    const-wide v6, -0x129c0d317038dc33L    # -8.802303416402835E218

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x129c0d317038dc33L    # -8.802303416402835E218

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    sget-object v1, Lcom/aide/uidesigner/N;->VH:[Lcom/aide/uidesigner/N$a;

    array-length v2, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    :try_start_1
    sget-object v4, Lcom/aide/uidesigner/N;->v5:Lcom/aide/uidesigner/N$a;

    if-eq v3, v4, :cond_1

    sget-object v4, Lcom/aide/uidesigner/N;->Zo:Lcom/aide/uidesigner/N$a;

    if-eq v3, v4, :cond_1

    iget-object v4, v3, Lcom/aide/uidesigner/N$a;->Zo:Ljava/lang/String;

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v3, v3, Lcom/aide/uidesigner/N$a;->Zo:Ljava/lang/String;

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->removeAttribute(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    return-void
.end method

.method private J0(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Integer;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x278d36d0456380a1L
    .end annotation

    const-wide v2, -0xc18dfce35f4913fL

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v4, -0xc18dfce35f4913fL

    invoke-static {v4, v5, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->we(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-eqz v0, :cond_5

    :try_start_1
    const-string v2, "px"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const-string v2, "dp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iget-object v2, p0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v2, "dip"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iget-object v2, p0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v2, "sp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iget-object v2, p0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v2, "@android:dimen/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-class v2, Landroid/R$dimen;

    const/16 v3, 0xf

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :cond_5
    move-object v0, v1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v0, :cond_6

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    throw v1
.end method

.method private J8(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/String;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x25a92c937341b52bL
    .end annotation

    const-wide v2, 0x39d9bf76c2b69d8dL    # 5.077879087560335E-30

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x39d9bf76c2b69d8dL    # 5.077879087560335E-30

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->we(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v0, :cond_1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private QX(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Float;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x697790ef0bb7b58L
    .end annotation

    const-wide v2, 0x5ad6e9d8c270e998L    # 3.970716655860417E129

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x5ad6e9d8c270e998L    # 3.970716655860417E129

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->J0(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v0, :cond_2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method private VH(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Integer;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x10b8a71c3236a86bL
    .end annotation

    const-wide v2, 0x7c09f904fb1fd65L

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x7c09f904fb1fd65L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->we(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "@+id/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/aide/uidesigner/Pa;->VH:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v0, p0, Lcom/aide/uidesigner/Pa;->VH:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    :goto_0
    return-object v0

    :cond_1
    const-string v1, "@id/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/uidesigner/Pa;->VH:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/aide/uidesigner/Pa;->VH:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v0, :cond_3

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method

.method private Ws(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Object;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x1ec5d382aff5aba4L
    .end annotation

    const-wide v2, -0x160cdf2528cd0820L    # -2.3426875469385685E202

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v4, -0x160cdf2528cd0820L    # -2.3426875469385685E202

    invoke-static {v4, v5, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->EQ(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Lcom/aide/uidesigner/a;

    move-result-object v0

    iget-object v0, v0, Lcom/aide/uidesigner/a;->Hw:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v2, "?android:attr/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-class v2, Landroid/R$attr;

    const/16 v3, 0xe

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v2, Lcom/aide/uidesigner/Oa;->j6:[I

    iget-object v3, p2, Lcom/aide/uidesigner/N$a;->VH:Lcom/aide/uidesigner/N$b;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    iget-object v2, p0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    invoke-virtual {v2, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/aide/uidesigner/Oa;->j6:[I

    iget-object v3, p2, Lcom/aide/uidesigner/N$a;->VH:Lcom/aide/uidesigner/N$b;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v0, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    packed-switch v0, :pswitch_data_1

    :cond_1
    :try_start_3
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    :goto_0
    move-object v0, v1

    :goto_1
    return-object v0

    :pswitch_0
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    iget-object v3, p0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v2, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, v2, Landroid/util/TypedValue;->data:I

    iget-object v2, p0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    :try_start_5
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    :try_start_6
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v0

    :try_start_7
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_1

    :pswitch_3
    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_8
    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v0

    :try_start_9
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :pswitch_4
    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_a
    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v0

    :try_start_b
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_1

    :pswitch_5
    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_c
    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result v0

    :try_start_d
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :pswitch_6
    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_e
    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-result v0

    :try_start_f
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_0

    :catch_1
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v0, :cond_3

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private XL()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1c6915ab03f9c9ecL
    .end annotation

    const-wide v2, 0x29816f5b89925830L    # 9.279686169838498E-109

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x29816f5b89925830L    # 9.279686169838498E-109

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/aide/uidesigner/Pa;->we:Ljava/lang/Throwable;

    iget-object v0, p0, Lcom/aide/uidesigner/Pa;->Zo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/aide/uidesigner/Pa;->VH:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/aide/uidesigner/Pa;->u7:Lcom/aide/uidesigner/la;

    invoke-virtual {v0}, Lcom/aide/uidesigner/la;->FH()V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/aide/uidesigner/Pa;->tp:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lcom/aide/common/pa;->j6(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    iput-object v1, p0, Lcom/aide/uidesigner/Pa;->EQ:Lorg/w3c/dom/Document;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    iget-object v0, p0, Lcom/aide/uidesigner/Pa;->EQ:Lorg/w3c/dom/Document;

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/aide/uidesigner/Pa;->j6(Lorg/w3c/dom/NodeList;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/aide/uidesigner/Pa;->QX:Lcom/aide/common/ab;

    invoke-direct {p0}, Lcom/aide/uidesigner/Pa;->aM()V

    return-void

    :catch_0
    move-exception v0

    iput-object v0, p0, Lcom/aide/uidesigner/Pa;->we:Ljava/lang/Throwable;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/uidesigner/Pa;->EQ:Lorg/w3c/dom/Document;
    :try_end_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private Zo(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Float;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x3319ec458699dae0L
    .end annotation

    const-wide v2, 0x316812dfadc7b0a8L    # 1.090019664880413E-70

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x316812dfadc7b0a8L    # 1.090019664880413E-70

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->we(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v0, :cond_2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method private aM()V
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x2db207938d40c9f4L
    .end annotation

    const-wide v6, 0x162b767e8717c400L    # 7.007430678088876E-202

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x162b767e8717c400L    # 7.007430678088876E-202

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/Pa;->v5:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-boolean v0, p0, Lcom/aide/uidesigner/Pa;->Ws:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/aide/uidesigner/Pa;->J8:Z

    if-eqz v0, :cond_3

    :cond_1
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Lcom/aide/uidesigner/Ma;

    iget-object v2, p0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    invoke-direct {v1, p0, v2, v0}, Lcom/aide/uidesigner/Ma;-><init>(Lcom/aide/uidesigner/Pa;Landroid/content/Context;Landroid/view/View;)V

    iget-boolean v2, p0, Lcom/aide/uidesigner/Pa;->J8:Z

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v2, p0, Lcom/aide/uidesigner/Pa;->v5:Landroid/view/ViewGroup;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    move-object v2, v0

    :goto_0
    iget-object v0, p0, Lcom/aide/uidesigner/Pa;->we:Ljava/lang/Throwable;

    iget-object v1, p0, Lcom/aide/uidesigner/Pa;->gn:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_a

    :try_start_1
    iget-object v1, p0, Lcom/aide/uidesigner/Pa;->EQ:Lorg/w3c/dom/Document;

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/aide/uidesigner/Pa;->j6(Lorg/w3c/dom/NodeList;Landroid/view/ViewGroup;Lcom/aide/uidesigner/s;I)V

    iget-object v1, p0, Lcom/aide/uidesigner/Pa;->v5:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->invalidate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_2

    :try_start_2
    new-instance v3, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v4, "no element"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/aide/uidesigner/Pa;->J8:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "\u6ca1\u6709\u6dfb\u52a0\u4efb\u4f55\u89c6\u56fe\uff0c\u70b9\u51fb\u4ee5\u6dfb\u52a0\u89c6\u56fe\u3002"

    :goto_2
    :try_start_3
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v0, p0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {v3, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    invoke-virtual {p0}, Lcom/aide/uidesigner/Pa;->J0()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/aide/uidesigner/Pa;->v5:Landroid/view/ViewGroup;

    move-object v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "\u6ca1\u6709\u6dfb\u52a0\u4efb\u4f55\u89c6\u56fe\u3002"

    :goto_4
    :try_start_4
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 99
    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_5

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_5
    throw v0

    .line 4294967295
    :cond_6
    :try_start_5
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "\u65e0\u6cd5\u67e5\u770b\u5e03\u5c40\u3002"

    :goto_5
    :try_start_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    .line 99
    :cond_7
    const-string v0, "Can not view the layout."

    goto :goto_5

    :cond_8
    const-string v0, "No views have been added. Tap to add views."

    goto :goto_2

    :cond_9
    const-string v0, "No views have been added."

    goto :goto_4

    :cond_a
    move-object v1, v0

    goto/16 :goto_1
.end method

.method private gn(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Integer;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x1169f2d19ecdb8c3L
    .end annotation

    const-wide v2, 0x5704215078f7d9bL

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x5704215078f7d9bL

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->we(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v0, :cond_2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method private j3()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x26bd855e546927e0L
    .end annotation

    const-wide v4, 0x3263ea835a3ca720L    # 5.909823791802614E-66

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3263ea835a3ca720L    # 5.909823791802614E-66

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/uidesigner/f;

    invoke-direct {v0}, Lcom/aide/uidesigner/f;-><init>()V

    iget-object v1, p0, Lcom/aide/uidesigner/Pa;->EQ:Lorg/w3c/dom/Document;

    invoke-virtual {v0, v1}, Lcom/aide/uidesigner/f;->j6(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/uidesigner/Pa;->tp:Ljava/lang/String;

    iget-object v0, p0, Lcom/aide/uidesigner/Pa;->J0:Lcom/aide/common/UndoManager;

    invoke-virtual {p0}, Lcom/aide/uidesigner/Pa;->u7()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aide/uidesigner/Pa;->tp:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/aide/common/UndoManager;->DW(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/aide/uidesigner/Pa;->XL()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aide/uidesigner/Pa;->j6(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private j6(Lorg/w3c/dom/Node;Ljava/lang/String;)Landroid/view/View;
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x3694a0093411380dL
    .end annotation

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v2, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v2, :cond_0

    const-wide v4, -0x27875567cb6ab755L    # -1.5550480854975763E118

    invoke-static {v4, v5, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-string v2, "."

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v3

    :goto_0
    return-object v2

    :cond_1
    const-string v2, "View"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    sget-boolean v2, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v2, :cond_2

    const-wide v4, -0x27875567cb6ab755L    # -1.5550480854975763E118

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    invoke-static/range {v3 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v3

    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/aide/uidesigner/Pa;->u7:Lcom/aide/uidesigner/la;

    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v2, v0

    invoke-virtual {p0, v2}, Lcom/aide/uidesigner/Pa;->DW(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/aide/uidesigner/la;->FH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    const-string v2, "@android:style/"

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-eqz v2, :cond_4

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Android_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "."

    const-string v7, "_"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v5, Lcom/aide/ui/Ma;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "android.widget."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Landroid/util/AttributeSet;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v2

    :cond_4
    if-eqz v4, :cond_5

    :try_start_3
    const-string v2, "?android:attr/"

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result v2

    if-eqz v2, :cond_5

    :try_start_4
    const-class v2, Landroid/R$attr;

    const/16 v5, 0xe

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android.widget."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/util/AttributeSet;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v2

    :cond_5
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.widget."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v2

    move-object v2, v3

    goto/16 :goto_0
.end method

.method private j6(Lorg/w3c/dom/Node;Landroid/view/ViewGroup;)Lcom/aide/uidesigner/c;
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x561e60696318db7L
    .end annotation

    :try_start_0
    sget-boolean v2, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v2, :cond_0

    const-wide v2, 0x1c78455487a50c99L

    invoke-static {v2, v3, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "$LayoutParams"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    const/4 v2, 0x2

    :try_start_2
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, -0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, -0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-object v4, v2

    :goto_0
    :try_start_3
    new-instance v3, Lcom/aide/uidesigner/c;

    invoke-direct {v3, v4}, Lcom/aide/uidesigner/c;-><init>(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/aide/uidesigner/Pa;->u7:Lcom/aide/uidesigner/la;

    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v2, v0

    invoke-virtual {p0, v2}, Lcom/aide/uidesigner/Pa;->DW(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/aide/uidesigner/la;->FH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v5, "?android:attr/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result v5

    if-eqz v5, :cond_3

    :try_start_4
    const-class v5, Landroid/R$attr;

    const/16 v6, 0xe

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v5, p0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    invoke-virtual {v5, v2, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    const-string v6, "layout_width"

    invoke-virtual {v2, v5, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(ILjava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_1
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    const-string v6, "layout_height"

    invoke-virtual {v2, v5, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(ILjava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_2
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_3
    :goto_1
    :try_start_5
    sget-object v2, Lcom/aide/uidesigner/N;->VH:[Lcom/aide/uidesigner/N$a;

    invoke-direct {p0, v3, p1, v2}, Lcom/aide/uidesigner/Pa;->j6(Lcom/aide/uidesigner/c;Lorg/w3c/dom/Node;[Lcom/aide/uidesigner/N$a;)V

    move-object v2, v3

    :goto_2
    return-object v2

    :catch_0
    move-exception v2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/ViewGroup$LayoutParams;

    aput-object v5, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    move-object v4, v2

    goto/16 :goto_0

    :catch_1
    move-exception v2

    :try_start_6
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v4, -0x2

    invoke-direct {v3, v2, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    new-instance v2, Lcom/aide/uidesigner/c;

    invoke-direct {v2, v3}, Lcom/aide/uidesigner/c;-><init>(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    sget-boolean v2, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v2, :cond_4

    const-wide v4, 0x1c78455487a50c99L

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    invoke-static/range {v3 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v3

    :catch_3
    move-exception v2

    goto :goto_1

    :array_0
    .array-data 4
        0x10100f4
        0x10100f5
    .end array-data
.end method

.method private j6(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Boolean;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x1428ee97a9d2c840L
    .end annotation

    const-wide v2, 0x28deffd77015c490L

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x28deffd77015c490L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->we(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v0, :cond_2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method private j6(Ljava/lang/String;Lcom/aide/uidesigner/N$a;)Ljava/lang/Integer;
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x198649e9e1788a59L
    .end annotation

    const-wide v2, 0x298f1fdf3bd8466bL

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v4, 0x298f1fdf3bd8466bL

    invoke-static {v4, v5, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    iget-object v0, p2, Lcom/aide/uidesigner/N$a;->tp:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p2, Lcom/aide/uidesigner/N$a;->gn:Ljava/lang/Class;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p2, Lcom/aide/uidesigner/N$a;->gn:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_3

    aget-object v4, v2, v0

    :try_start_2
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_2

    iget-object v6, p2, Lcom/aide/uidesigner/N$a;->tp:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

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

    if-eqz v5, :cond_2

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_3
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v0, :cond_4

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1
.end method

.method private j6(Landroid/view/View;Z)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x20bb8bb3e7ec57d0L
    .end annotation

    const-wide v4, 0x32f02ad788648a6cL    # 2.456290867952483E-63

    :try_start_0
    sget-boolean v2, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v6, 0x32f02ad788648a6cL    # 2.456290867952483E-63

    invoke-static {v6, v7, p0, p1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-eqz p2, :cond_3

    iget-object v2, p0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x41a00000    # 20.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setMinimumHeight(I)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setMinimumWidth(I)V

    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/widget/TextView;

    if-eq v2, v3, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/widget/Button;

    if-ne v2, v3, :cond_3

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/widget/ListView;

    if-ne v2, v3, :cond_4

    move-object v0, p1

    check-cast v0, Landroid/widget/ListView;

    move-object v2, v0

    invoke-direct {p0, v2}, Lcom/aide/uidesigner/Pa;->j6(Landroid/widget/ListView;)V

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/widget/Spinner;

    if-ne v2, v3, :cond_5

    move-object v0, p1

    check-cast v0, Landroid/widget/Spinner;

    move-object v2, v0

    invoke-direct {p0, v2}, Lcom/aide/uidesigner/Pa;->j6(Landroid/widget/Spinner;)V

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/widget/ExpandableListView;

    if-ne v2, v3, :cond_6

    move-object v0, p1

    check-cast v0, Landroid/widget/ExpandableListView;

    move-object v2, v0

    invoke-direct {p0, v2}, Lcom/aide/uidesigner/Pa;->j6(Landroid/widget/ExpandableListView;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    return-void

    :catch_0
    move-exception v3

    sget-boolean v2, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v2, :cond_7

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v6, p0

    move-object v7, p1

    invoke-static/range {v3 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    throw v3
.end method

.method private j6(Landroid/widget/ExpandableListView;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0xfba9b0e1be29bL
    .end annotation

    const-wide v2, -0xa3f59b4b82ae809L    # -1.5999622210495513E259

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xa3f59b4b82ae809L    # -1.5999622210495513E259

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/uidesigner/Na;

    invoke-direct {v0, p0}, Lcom/aide/uidesigner/Na;-><init>(Lcom/aide/uidesigner/Pa;)V

    invoke-virtual {p1, v0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private j6(Landroid/widget/ListView;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x9f026b33c640000L
    .end annotation

    const-wide v4, 0x107da6ef67f310bcL

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x107da6ef67f310bcL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x1e

    if-ge v0, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Item "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    const v3, 0x1090003

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private j6(Landroid/widget/Spinner;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x10841d74bad81dc8L
    .end annotation

    const-wide v4, 0x10bc7e59eb838938L    # 4.698400157833868E-228

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x10bc7e59eb838938L    # 4.698400157833868E-228

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x1e

    if-ge v0, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Item "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    const v3, 0x1090003

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private j6(Lcom/aide/uidesigner/c;Lorg/w3c/dom/Node;[Lcom/aide/uidesigner/N$a;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x1476c42373e60844L
    .end annotation

    const-wide v8, -0x3a407702d7ac2de0L    # -9.759644718559141E27

    :try_start_0
    sget-boolean v2, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v2, :cond_0

    const-wide v2, -0x3a407702d7ac2de0L    # -9.759644718559141E27

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v2 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    array-length v5, p3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    move v4, v2

    :goto_0
    if-ge v4, v5, :cond_5

    aget-object v6, p3, v4

    :try_start_1
    invoke-virtual {p1, v6}, Lcom/aide/uidesigner/c;->j6(Lcom/aide/uidesigner/N$a;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p2, v6}, Lcom/aide/uidesigner/Pa;->tp(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Object;

    move-result-object v3

    iget-boolean v2, p0, Lcom/aide/uidesigner/Pa;->J8:Z

    if-eqz v2, :cond_2

    instance-of v2, v3, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/aide/uidesigner/N;->v5:Lcom/aide/uidesigner/N$a;

    if-eq v6, v2, :cond_1

    sget-object v2, Lcom/aide/uidesigner/N;->Zo:Lcom/aide/uidesigner/N$a;

    if-ne v6, v2, :cond_2

    :cond_1
    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_2

    iget-object v2, p0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v7, 0x41200000    # 10.0f

    mul-float/2addr v2, v7

    float-to-int v7, v2

    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v2, v7, :cond_2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_2
    invoke-virtual {p1, v6, v3}, Lcom/aide/uidesigner/c;->j6(Lcom/aide/uidesigner/N$a;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    :catch_0
    move-exception v3

    sget-boolean v2, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v2, :cond_4

    move-wide v4, v8

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    invoke-static/range {v3 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v3

    :cond_5
    return-void
.end method

.method private j6(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .annotation runtime Labcd/su;
        method = -0x2e2c6a778ebd1650L
    .end annotation

    const-wide v10, 0x38d89b1cb6801f38L    # 7.404570758965967E-35

    const/4 v8, 0x0

    :try_start_0
    sget-boolean v2, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v2, :cond_0

    const-wide v2, 0x38d89b1cb6801f38L    # 7.404570758965967E-35

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v2 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    instance-of v2, p1, Lorg/w3c/dom/Element;

    if-eqz v2, :cond_2

    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v2, v0

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    move v3, v8

    :goto_0
    invoke-interface {v4}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    if-ge v3, v2, :cond_2

    invoke-interface {v4, v3}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Attr;

    invoke-interface {v2}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2, p3}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    if-eqz v3, :cond_4

    move v2, v8

    :goto_1
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v2, v4, :cond_4

    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-direct {p0, v4, p2, p3}, Lcom/aide/uidesigner/Pa;->j6(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v3

    sget-boolean v2, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v2, :cond_3

    move-wide v4, v10

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    invoke-static/range {v3 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v3

    :cond_4
    return-void
.end method

.method private j6(Lorg/w3c/dom/NodeList;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x2b7e0a7fe11c468L
    .end annotation

    const-wide v6, -0x1b8300ac6fc2c2d8L

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1b8300ac6fc2c2d8L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, v1}, Lcom/aide/uidesigner/Pa;->j6(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/aide/uidesigner/Pa;->VH:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/aide/uidesigner/Pa;->Zo:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/aide/uidesigner/Pa;->VH:Ljava/util/Map;

    iget-object v4, p0, Lcom/aide/uidesigner/Pa;->VH:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/aide/uidesigner/Pa;->j6(Lorg/w3c/dom/NodeList;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    return-void
.end method

.method private j6(Lorg/w3c/dom/NodeList;Landroid/view/ViewGroup;Lcom/aide/uidesigner/s;I)V
    .registers 21
    .annotation runtime Labcd/su;
        method = -0x28ed77fe334c96dL
    .end annotation

    :try_start_0
    sget-boolean v2, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v2, :cond_0

    new-instance v8, Ljava/lang/Integer;

    move/from16 v0, p4

    invoke-direct {v8, v0}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x14924263dff8f6dL

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-static/range {v2 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v2, 0x0

    move v15, v2

    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v15, v2, :cond_b

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2}, Lcom/aide/uidesigner/Pa;->j6(Lorg/w3c/dom/Node;Ljava/lang/String;)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/aide/uidesigner/Pa;->J8:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/aide/uidesigner/Pa;->j6(Landroid/view/View;Z)V

    new-instance v6, Lcom/aide/uidesigner/c;

    invoke-direct {v6, v12}, Lcom/aide/uidesigner/c;-><init>(Ljava/lang/Object;)V

    sget-object v2, Lcom/aide/uidesigner/N;->gn:[Lcom/aide/uidesigner/N$a;

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v11, v2}, Lcom/aide/uidesigner/Pa;->j6(Lcom/aide/uidesigner/c;Lorg/w3c/dom/Node;[Lcom/aide/uidesigner/N$a;)V

    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v11, v1}, Lcom/aide/uidesigner/Pa;->j6(Lorg/w3c/dom/Node;Landroid/view/ViewGroup;)Lcom/aide/uidesigner/c;

    move-result-object v7

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/aide/uidesigner/Pa;->J8:Z

    if-eqz v2, :cond_8

    instance-of v2, v12, Landroid/widget/TableRow;

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aide/uidesigner/Pa;->QX:Lcom/aide/common/ab;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aide/uidesigner/Pa;->XL:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_1
    const/4 v2, 0x1

    move v14, v2

    :goto_2
    new-instance v2, Lcom/aide/uidesigner/s;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    const/4 v13, 0x0

    if-eqz v14, :cond_9

    move-object v4, v12

    :goto_3
    move-object v0, v11

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v5, v0

    move-object/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p0

    invoke-direct/range {v2 .. v10}, Lcom/aide/uidesigner/s;-><init>(Landroid/content/Context;Landroid/view/View;Lorg/w3c/dom/Element;Lcom/aide/uidesigner/c;Lcom/aide/uidesigner/c;Lcom/aide/uidesigner/s;ILcom/aide/uidesigner/Pa;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aide/uidesigner/Pa;->gn:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v14, :cond_a

    move-object v4, v2

    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/aide/uidesigner/Pa;->j6(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/aide/uidesigner/Pa;->VH:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/view/View;->setId(I)V

    :cond_2
    if-eqz p2, :cond_3

    iget-object v3, v7, Lcom/aide/uidesigner/c;->FH:Ljava/lang/Object;

    check-cast v3, Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    instance-of v3, v12, Landroid/view/ViewGroup;

    if-eqz v3, :cond_c

    move-object v0, v12

    check-cast v0, Landroid/view/ViewGroup;

    move-object v3, v0

    :goto_5
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    add-int/lit8 v5, p4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3, v2, v5}, Lcom/aide/uidesigner/Pa;->j6(Lorg/w3c/dom/NodeList;Landroid/view/ViewGroup;Lcom/aide/uidesigner/s;I)V

    :cond_4
    add-int/lit8 v2, v15, 0x1

    move v15, v2

    goto/16 :goto_0

    :cond_5
    new-instance v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    invoke-direct {v12, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v12, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/aide/uidesigner/Pa;->J8:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x41a00000    # 20.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v12, v2}, Landroid/view/View;->setMinimumHeight(I)V

    invoke-virtual {v12, v2}, Landroid/view/View;->setMinimumWidth(I)V

    :cond_6
    new-instance v2, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v6, Lcom/aide/uidesigner/c;

    invoke-direct {v6, v2}, Lcom/aide/uidesigner/c;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v3

    sget-boolean v2, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v2, :cond_7

    const-wide v4, -0x14924263dff8f6dL

    new-instance v10, Ljava/lang/Integer;

    move/from16 v0, p4

    invoke-direct {v10, v0}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-static/range {v3 .. v10}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    throw v3

    :cond_8
    const/4 v2, 0x0

    move v14, v2

    goto/16 :goto_2

    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_3

    :cond_a
    move-object v4, v12

    goto/16 :goto_4

    :cond_b
    return-void

    :cond_c
    move-object v3, v13

    goto/16 :goto_5
.end method

.method static synthetic j6(Lcom/aide/uidesigner/Pa;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/aide/uidesigner/Pa;->J8:Z

    return v0
.end method

.method private tp(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Object;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x4f75828235366603L
    .end annotation

    const-wide v2, -0x3d39c1afbd0dce31L    # -4.891378069616362E13

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3d39c1afbd0dce31L    # -4.891378069616362E13

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->Ws(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->FH(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v0, :cond_2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method private u7(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Integer;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x1f134ea401161c7fL
    .end annotation

    const-wide v2, -0x9d1495a353d3503L

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x9d1495a353d3503L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->we(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v1, v4

    move v0, v4

    :goto_0
    if-ge v1, v6, :cond_2

    aget-object v4, v5, v1

    invoke-direct {p0, v4, p2}, Lcom/aide/uidesigner/Pa;->j6(Ljava/lang/String;Lcom/aide/uidesigner/N$a;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    or-int/2addr v0, v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v0, :cond_4

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1
.end method

.method private v5(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/Enum;
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x127a927a6466356fL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            "Lcom/aide/uidesigner/N$a;",
            ")",
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation

    const-wide v2, -0x2de977438c1cbbcfL    # -2.801686063265122E87

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v4, -0x2de977438c1cbbcfL    # -2.801686063265122E87

    invoke-static {v4, v5, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->we(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v0, p2, Lcom/aide/uidesigner/N$a;->gn:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v4, v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_2

    aget-object v5, v3, v0

    :try_start_2
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_1

    const-string v7, "_"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v0, :cond_3

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method

.method private we(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Ljava/lang/String;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x383bb86924c711f7L
    .end annotation

    const-wide v2, 0x2039c4b543ae709fL    # 1.92189439240101E-153

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2039c4b543ae709fL    # 1.92189439240101E-153

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/Pa;->u7:Lcom/aide/uidesigner/la;

    invoke-direct {p0, p1, p2}, Lcom/aide/uidesigner/Pa;->EQ(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Lcom/aide/uidesigner/a;

    move-result-object v1

    iget-object v1, v1, Lcom/aide/uidesigner/a;->Hw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aide/uidesigner/la;->j6(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v0, :cond_1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method


# virtual methods
.method public DW(Lorg/w3c/dom/Element;)Ljava/lang/String;
    .registers 6

    const-wide v2, 0xf34fbc8ae0e9365L

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xf34fbc8ae0e9365L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    const-string v1, "style"

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    instance-of v1, v0, Lorg/w3c/dom/Attr;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/w3c/dom/Attr;

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public DW()V
    .registers 5

    const-wide v2, -0x6c553903490efbb8L

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x6c553903490efbb8L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public DW(Lcom/aide/uidesigner/s;)V
    .registers 6

    const-wide v2, 0x4cc4103e825fa00L

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4cc4103e825fa00L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/Pa;->QX:Lcom/aide/common/ab;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/uidesigner/Pa;->QX:Lcom/aide/common/ab;

    invoke-interface {v0, p1}, Lcom/aide/common/ab;->j6(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/uidesigner/Pa;->QX:Lcom/aide/common/ab;

    invoke-direct {p0}, Lcom/aide/uidesigner/Pa;->aM()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/aide/uidesigner/Pa;->j6(Lcom/aide/uidesigner/s;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public DW(Lorg/w3c/dom/Element;Lcom/aide/uidesigner/b;)V
    .registers 10

    const-wide v2, 0x3ee128c07ec9e8d8L    # 8.182138082836137E-6

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3ee128c07ec9e8d8L    # 8.182138082836137E-6

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-string v0, "UI Designer: Add view behind"

    invoke-static {v0}, Labcd/F;->j6(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/aide/uidesigner/Pa;->DW(Lcom/aide/uidesigner/b;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :goto_0
    invoke-direct {p0}, Lcom/aide/uidesigner/Pa;->j3()V

    return-void

    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v0, :cond_2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public DW(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .registers 10

    const-wide v2, 0x922013ede2355b0L

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x922013ede2355b0L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-string v0, "UI Designer: Set view ID"

    const-string v1, "id"

    invoke-static {v1, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Labcd/F;->j6(Ljava/lang/String;Ljava/util/Map;)V

    if-nez p2, :cond_2

    const-string v0, "android:id"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->removeAttribute(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/aide/uidesigner/Pa;->j3()V

    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lcom/aide/uidesigner/Pa;->j6(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@+id/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "android:id"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/aide/uidesigner/Pa;->EQ:Lorg/w3c/dom/Document;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@id/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@id/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v0, v4}, Lcom/aide/uidesigner/Pa;->j6(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v0, :cond_3

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method

.method public DW(Z)V
    .registers 6

    const-wide v2, -0x1b5d1ff5e10e0af1L    # -5.975551390238326E176

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1b5d1ff5e10e0af1L    # -5.975551390238326E176

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_0
    iput-boolean p1, p0, Lcom/aide/uidesigner/Pa;->J8:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/uidesigner/Pa;->QX:Lcom/aide/common/ab;

    invoke-direct {p0}, Lcom/aide/uidesigner/Pa;->aM()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public EQ()V
    .registers 7

    const-wide v4, -0x1e28a2453ac7e355L    # -2.1024441942120992E163

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1e28a2453ac7e355L    # -2.1024441942120992E163

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/Pa;->Hw:Ljava/lang/String;

    invoke-static {v0}, Lcom/aide/uidesigner/e;->FH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/uidesigner/Pa;->tp:Ljava/lang/String;

    iget-object v0, p0, Lcom/aide/uidesigner/Pa;->J0:Lcom/aide/common/UndoManager;

    invoke-virtual {p0}, Lcom/aide/uidesigner/Pa;->u7()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aide/uidesigner/Pa;->tp:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/aide/common/UndoManager;->j6(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/aide/uidesigner/Pa;->XL()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH(Lorg/w3c/dom/Element;)Ljava/lang/String;
    .registers 10

    const-wide v6, 0xa71644a5c6f2754L

    const/4 v4, -0x1

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xa71644a5c6f2754L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/aide/uidesigner/Pa;->Hw:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, ""

    if-nez v1, :cond_2

    :goto_0
    const/16 v1, 0x2e

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-eq v1, v4, :cond_5

    const/4 v1, 0x0

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_1
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x2e

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 v0, 0x1

    if-eq v3, v4, :cond_1

    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    iget-object v2, p0, Lcom/aide/uidesigner/Pa;->Zo:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/aide/uidesigner/Pa;->Hw:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0

    :cond_5
    move-object v2, v0

    goto :goto_1
.end method

.method public FH()V
    .registers 5

    const-wide v2, -0x1e3fca4c38fe30d8L    # -7.292637781199997E162

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1e3fca4c38fe30d8L    # -7.292637781199997E162

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    invoke-virtual {p0}, Lcom/aide/uidesigner/Pa;->gn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH(Lorg/w3c/dom/Element;Lcom/aide/uidesigner/b;)V
    .registers 10

    const-wide v2, -0x50199b758b5e4180L    # -6.043358027570658E-78

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x50199b758b5e4180L    # -6.043358027570658E-78

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-string v0, "UI Designer: Add view inside"

    invoke-static {v0}, Labcd/F;->j6(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/aide/uidesigner/Pa;->DW(Lcom/aide/uidesigner/b;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-direct {p0}, Lcom/aide/uidesigner/Pa;->j3()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v0, :cond_1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public FH(Z)V
    .registers 6

    const-wide v2, -0x1c0773df88179749L    # -3.7945693644650516E173

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1c0773df88179749L    # -3.7945693644650516E173

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_0
    iput-boolean p1, p0, Lcom/aide/uidesigner/Pa;->Ws:Z

    invoke-direct {p0}, Lcom/aide/uidesigner/Pa;->aM()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Hw()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide v2, -0x2af44200ab3f2744L    # -4.854327791276645E101

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2af44200ab3f2744L    # -4.854327791276645E101

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/aide/uidesigner/Pa;->Zo:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Hw(Lorg/w3c/dom/Element;Lcom/aide/uidesigner/b;)V
    .registers 10

    const-wide v2, 0x293842f6bf083e5L

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x293842f6bf083e5L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-string v0, "UI Designer: Surrount with view"

    invoke-static {v0}, Labcd/F;->j6(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/aide/uidesigner/Pa;->DW(Lcom/aide/uidesigner/b;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v1, p1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    if-eqz v4, :cond_1

    invoke-interface {v1, v0, v4}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :goto_0
    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-direct {p0, p1}, Lcom/aide/uidesigner/Pa;->Hw(Lorg/w3c/dom/Element;)V

    invoke-direct {p0}, Lcom/aide/uidesigner/Pa;->j3()V

    return-void

    :cond_1
    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v0, :cond_2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method protected abstract J0()V
.end method

.method public J8()V
    .registers 7

    const-wide v4, 0x144c6fa3bfc52230L

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x144c6fa3bfc52230L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/uidesigner/Pa;->tp:Ljava/lang/String;

    iget-object v0, p0, Lcom/aide/uidesigner/Pa;->J0:Lcom/aide/common/UndoManager;

    invoke-virtual {p0}, Lcom/aide/uidesigner/Pa;->u7()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aide/uidesigner/Pa;->tp:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/aide/common/UndoManager;->DW(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/aide/uidesigner/Pa;->XL()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aide/uidesigner/Pa;->j6(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public QX()Ljava/lang/String;
    .registers 5

    const-wide v2, -0x47cf17b011d9fa9L    # -9.068051257490178E286

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x47cf17b011d9fa9L    # -9.068051257490178E286

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/Pa;->u7:Lcom/aide/uidesigner/la;

    invoke-virtual {v0}, Lcom/aide/uidesigner/la;->Hw()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public VH()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/aide/uidesigner/s;",
            ">;"
        }
    .end annotation

    const-wide v2, -0x3cbd3401acc02ddbL    # -1.0581685519230026E16

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3cbd3401acc02ddbL    # -1.0581685519230026E16

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/aide/uidesigner/Pa;->gn:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Ws()V
    .registers 7

    const-wide v4, 0x15fc94f98e3ddbd0L

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x15fc94f98e3ddbd0L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "application/xml"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/aide/uidesigner/Pa;->Hw:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.extra.STREAM"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    const-string v2, "XML Layout"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    const-string v2, "Attached..."

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public Zo()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide v2, -0x457600b3a1510d45L    # -1.0500209314073873E-26

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x457600b3a1510d45L    # -1.0500209314073873E-26

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/Pa;->u7:Lcom/aide/uidesigner/la;

    invoke-virtual {v0}, Lcom/aide/uidesigner/la;->DW()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public gn()Ljava/lang/String;
    .registers 5

    const-wide v2, 0x52e3aaf59cd5d7cL

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x52e3aaf59cd5d7cL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/Pa;->tp:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 6

    const-wide v2, -0xd0b6452d39583bfL    # -5.628525883473291E245

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xd0b6452d39583bfL    # -5.628525883473291E245

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    const-string v1, "android:id"

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    instance-of v1, v0, Lorg/w3c/dom/Attr;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/w3c/dom/Attr;

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "@+id/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
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
            "Ljava/util/List",
            "<",
            "Lcom/aide/uidesigner/a;",
            ">;"
        }
    .end annotation

    const-wide v6, 0xaee45087dff1cbL

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xaee45087dff1cbL

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/aide/uidesigner/N;->u7:[Lcom/aide/uidesigner/N$a;

    array-length v3, v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_4

    aget-object v4, v2, v0

    :try_start_1
    iget-boolean v5, v4, Lcom/aide/uidesigner/N$a;->EQ:Z

    if-eqz v5, :cond_2

    invoke-virtual {p2, v4}, Lcom/aide/uidesigner/c;->j6(Lcom/aide/uidesigner/N$a;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0, p3, v4}, Lcom/aide/uidesigner/Pa;->EQ(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Lcom/aide/uidesigner/a;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v4}, Lcom/aide/uidesigner/c;->j6(Lcom/aide/uidesigner/N$a;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0, p3, v4}, Lcom/aide/uidesigner/Pa;->EQ(Lorg/w3c/dom/Node;Lcom/aide/uidesigner/N$a;)Lcom/aide/uidesigner/a;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v0, :cond_3

    move-wide v2, v6

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1

    :cond_4
    :try_start_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/uidesigner/a;

    invoke-virtual {v0}, Lcom/aide/uidesigner/a;->DW()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Lcom/aide/uidesigner/a;->FH()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/uidesigner/a;

    invoke-virtual {v0}, Lcom/aide/uidesigner/a;->FH()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/uidesigner/a;

    invoke-virtual {v0}, Lcom/aide/uidesigner/a;->DW()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :cond_a
    return-object v2
.end method

.method public j6(Lcom/aide/uidesigner/b;)V
    .registers 6

    const-wide v2, -0x6a3b266b5ea5c61L    # -3.919677658943115E276

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x6a3b266b5ea5c61L    # -3.919677658943115E276

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-string v0, "UI Designer: Add view"

    invoke-static {v0}, Labcd/F;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aide/uidesigner/Pa;->EQ:Lorg/w3c/dom/Document;

    invoke-direct {p0, p1}, Lcom/aide/uidesigner/Pa;->DW(Lcom/aide/uidesigner/b;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-direct {p0}, Lcom/aide/uidesigner/Pa;->j3()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected abstract j6(Lcom/aide/uidesigner/s;)V
.end method

.method public j6(Ljava/lang/String;)V
    .registers 8

    const-wide v4, 0x15ac28ef4fa64181L

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x15ac28ef4fa64181L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/uidesigner/Pa;->Hw:Ljava/lang/String;

    iget-object v0, p0, Lcom/aide/uidesigner/Pa;->J0:Lcom/aide/common/UndoManager;

    iget-object v1, p0, Lcom/aide/uidesigner/Pa;->tp:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/aide/common/UndoManager;->j6(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/aide/uidesigner/Pa;->XL()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Ljava/lang/String;Landroid/content/Intent;)V
    .registers 10

    const-wide v2, 0x659689ec555af713L    # 2.338123638276122E181

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x659689ec555af713L    # 2.338123638276122E181

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/Pa;->u7:Lcom/aide/uidesigner/la;

    invoke-virtual {v0, p1, p2}, Lcom/aide/uidesigner/la;->j6(Ljava/lang/String;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v0, :cond_1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 14

    const-wide v8, -0x2158ab741f8ad533L    # -9.322394023117829E147

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x2158ab741f8ad533L    # -9.322394023117829E147

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/uidesigner/Pa;->u7()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p2, p0, Lcom/aide/uidesigner/Pa;->tp:Ljava/lang/String;

    invoke-direct {p0}, Lcom/aide/uidesigner/Pa;->XL()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/aide/uidesigner/Pa;->j6(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v0, :cond_2

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public j6(Lorg/w3c/dom/Element;)V
    .registers 6

    const-wide v2, 0x2c0f154c7487a8cL

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2c0f154c7487a8cL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-string v0, "UI Designer: Delete view"

    invoke-static {v0}, Labcd/F;->j6(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-direct {p0}, Lcom/aide/uidesigner/Pa;->j3()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Lorg/w3c/dom/Element;Lcom/aide/common/ab;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            "Lcom/aide/common/ab",
            "<",
            "Lcom/aide/uidesigner/s;",
            ">;)V"
        }
    .end annotation

    const-wide v2, -0x3a0714e237cce880L    # -1.2339005511968143E29

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3a0714e237cce880L    # -1.2339005511968143E29

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p2, p0, Lcom/aide/uidesigner/Pa;->QX:Lcom/aide/common/ab;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aide/uidesigner/Pa;->XL:Ljava/util/ArrayList;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {v4, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    instance-of v5, v0, Lorg/w3c/dom/Element;

    if-eqz v5, :cond_3

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/aide/uidesigner/Pa;->aM()V

    return-void

    :cond_2
    iget-object v5, p0, Lcom/aide/uidesigner/Pa;->XL:Ljava/util/ArrayList;

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v0, :cond_4

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1
.end method

.method public j6(Lorg/w3c/dom/Element;Lcom/aide/uidesigner/N$a;Ljava/lang/String;)V
    .registers 12

    const-wide v6, 0x4fe73d3e45757e0L

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4fe73d3e45757e0L

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attrName"

    iget-object v2, p2, Lcom/aide/uidesigner/N$a;->Zo:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "value"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "UI Designer: Set attribute"

    invoke-static {v1, v0}, Labcd/F;->j6(Ljava/lang/String;Ljava/util/Map;)V

    if-nez p3, :cond_1

    iget-object v0, p2, Lcom/aide/uidesigner/N$a;->Zo:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->removeAttribute(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lcom/aide/uidesigner/Pa;->j3()V

    return-void

    :cond_1
    iget-object v0, p2, Lcom/aide/uidesigner/N$a;->Zo:Ljava/lang/String;

    invoke-interface {p1, v0, p3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v0, :cond_2

    move-wide v2, v6

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public j6(Lorg/w3c/dom/Element;Lcom/aide/uidesigner/N$a;Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .registers 15

    const-wide v8, 0x2d1fb9f55042a5cL

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2d1fb9f55042a5cL

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p2, Lcom/aide/uidesigner/N$a;->Zo:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@+id/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android:id"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v1, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/aide/uidesigner/Pa;->j3()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v0, :cond_2

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public j6(Lorg/w3c/dom/Element;Lcom/aide/uidesigner/b;)V
    .registers 10

    const-wide v2, -0x11593f8a5b8187e9L    # -1.052694722967265E225

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x11593f8a5b8187e9L    # -1.052694722967265E225

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-string v0, "UI Designer: Add view before"

    invoke-static {v0}, Labcd/F;->j6(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/aide/uidesigner/Pa;->DW(Lcom/aide/uidesigner/b;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-direct {p0}, Lcom/aide/uidesigner/Pa;->j3()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v0, :cond_1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public j6(Lorg/w3c/dom/Element;Lcom/aide/uidesigner/b;Lorg/w3c/dom/Element;Lcom/aide/uidesigner/N$a;Ljava/lang/String;)V
    .registers 16

    const-wide v8, 0x1307bb33611618dL

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1307bb33611618dL

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
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
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v0, :cond_1

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public j6(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .registers 10

    const-wide v2, 0x50f52d9a425b63fL

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x50f52d9a425b63fL

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-string v0, "UI Designer: Set style"

    const-string v1, "style"

    invoke-static {v1, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Labcd/F;->j6(Ljava/lang/String;Ljava/util/Map;)V

    if-nez p2, :cond_1

    const-string v0, "style"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->removeAttribute(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lcom/aide/uidesigner/Pa;->j3()V

    return-void

    :cond_1
    const-string v0, "style"

    invoke-interface {p1, v0, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v0, :cond_2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method protected abstract j6(Z)V
.end method

.method public j6()Z
    .registers 7

    const-wide v4, 0x2a7e68619b21c6a0L

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v2, 0x2a7e68619b21c6a0L

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/Pa;->FH:Landroid/content/Context;

    const-string v2, "clipboard"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->hasText()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/16 v2, 0x3c

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public tp()Z
    .registers 5

    const-wide v2, 0x286544bed1ff5ac0L

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x286544bed1ff5ac0L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/Pa;->EQ:Lorg/w3c/dom/Document;

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public u7()Ljava/lang/String;
    .registers 5

    const-wide v2, 0x2865f72b94030293L    # 4.459774680636018E-114

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2865f72b94030293L    # 4.459774680636018E-114

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/Pa;->Hw:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public v5()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide v2, -0xcc30e35005af318L

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Pa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xcc30e35005af318L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/Pa;->u7:Lcom/aide/uidesigner/la;

    invoke-virtual {v0}, Lcom/aide/uidesigner/la;->j6()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Pa;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected abstract we()V
.end method
