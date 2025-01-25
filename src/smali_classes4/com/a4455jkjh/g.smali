.class public Lcom/a4455jkjh/g;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field private b:Ljava/util/List;

.field private c:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a4455jkjh/g;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a4455jkjh/g;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a4455jkjh/g;->c:Ljava/util/List;

    return-void
.end method

.method private a(Ljava/lang/StringBuffer;I)V
    .registers 5

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    :goto_6
    if-lt v0, p2, :cond_9

    return-void

    :cond_9
    const-string v1, "\t"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/a4455jkjh/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, ""

    :goto_e
    return-object v0

    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a4455jkjh/c;

    iget-object v2, v0, Lcom/a4455jkjh/c;->a:Ljava/lang/String;

    const-string v3, "android:name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v0, v0, Lcom/a4455jkjh/c;->b:Ljava/lang/String;

    goto :goto_e
.end method

.method public a(Landroid/widget/TextView;)V
    .registers 10

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/a4455jkjh/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    :cond_e
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a4455jkjh/c;

    iget-object v1, v0, Lcom/a4455jkjh/c;->a:Ljava/lang/String;

    const-string v2, "android:name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    sget-object v1, Lcom/a4455jkjh/ManifestActivity;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    :cond_25
    :goto_25
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_48

    :goto_2b
    if-nez v2, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "未知\n("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/a4455jkjh/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_48
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a4455jkjh/f;

    iget-object v6, v1, Lcom/a4455jkjh/f;->a:Ljava/lang/String;

    iget-object v7, v0, Lcom/a4455jkjh/c;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    invoke-virtual {v1}, Lcom/a4455jkjh/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    move v2, v1

    goto :goto_25

    :cond_62
    move v2, v3

    goto :goto_2b
.end method

.method public a(Lcom/a4455jkjh/c;)V
    .registers 3

    iget-object v0, p0, Lcom/a4455jkjh/g;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/StringBuffer;Ljava/util/List;Ljava/lang/String;I)V
    .registers 10

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/a4455jkjh/g;->a:Ljava/lang/String;

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/a4455jkjh/g;->a:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    invoke-direct {p0, p1, p4}, Lcom/a4455jkjh/g;->a(Ljava/lang/StringBuffer;I)V

    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/a4455jkjh/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/a4455jkjh/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a7

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v0, p0, Lcom/a4455jkjh/g;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a4455jkjh/c;

    iget-object v0, v0, Lcom/a4455jkjh/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v0, p0, Lcom/a4455jkjh/g;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a4455jkjh/c;

    iget-object v0, v0, Lcom/a4455jkjh/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_51
    iget-object v0, p0, Lcom/a4455jkjh/g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5e

    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5e
    iget-object v0, p0, Lcom/a4455jkjh/g;->a:Ljava/lang/String;

    const-string v1, "manifest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d6

    :cond_72
    iget-object v0, p0, Lcom/a4455jkjh/g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_78
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_e5

    iget-object v0, p0, Lcom/a4455jkjh/g;->a:Ljava/lang/String;

    if-eqz v0, :cond_a6

    iget-object v0, p0, Lcom/a4455jkjh/g;->a:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a6

    iget-object v0, p0, Lcom/a4455jkjh/g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_f1

    invoke-direct {p0, p1, p4}, Lcom/a4455jkjh/g;->a(Ljava/lang/StringBuffer;I)V

    const-string v0, "</"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/a4455jkjh/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a6
    :goto_a6
    return-void

    :cond_a7
    iget-object v0, p0, Lcom/a4455jkjh/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_ad
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a4455jkjh/c;

    add-int/lit8 v2, p4, 0x1

    invoke-direct {p0, p1, v2}, Lcom/a4455jkjh/g;->a(Ljava/lang/StringBuffer;I)V

    iget-object v2, v0, Lcom/a4455jkjh/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v0, v0, Lcom/a4455jkjh/c;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_ad

    :cond_d6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a4455jkjh/g;

    const/4 v2, 0x0

    const-string v3, ""

    add-int/lit8 v4, p4, 0x1

    invoke-virtual {v0, p1, v2, v3, v4}, Lcom/a4455jkjh/g;->a(Ljava/lang/StringBuffer;Ljava/util/List;Ljava/lang/String;I)V

    goto :goto_6c

    :cond_e5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a4455jkjh/g;

    add-int/lit8 v2, p4, 0x1

    invoke-virtual {v0, p1, p2, p3, v2}, Lcom/a4455jkjh/g;->a(Ljava/lang/StringBuffer;Ljava/util/List;Ljava/lang/String;I)V

    goto :goto_78

    :cond_f1
    const-string v0, "/>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a6
.end method

.method public a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/a4455jkjh/g;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/a4455jkjh/g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_15

    :cond_14
    return-void

    :cond_15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a4455jkjh/g;

    iget-object v2, v0, Lcom/a4455jkjh/g;->a:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_27
    iget-object v0, p0, Lcom/a4455jkjh/g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a4455jkjh/g;

    invoke-virtual {v0, p1, p2, p3}, Lcom/a4455jkjh/g;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d
.end method

.method public a(Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 8

    const/4 v4, 0x2

    if-ne p2, v4, :cond_10

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a4455jkjh/g;->a:Ljava/lang/String;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_e
    if-lt v0, v1, :cond_18

    :cond_10
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    :goto_14
    const/4 v1, 0x1

    if-ne v0, v1, :cond_31

    :cond_17
    return-void

    :cond_18
    new-instance v2, Lcom/a4455jkjh/c;

    invoke-direct {v2}, Lcom/a4455jkjh/c;-><init>()V

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/a4455jkjh/c;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/a4455jkjh/c;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/a4455jkjh/g;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_31
    if-ne v0, v4, :cond_44

    new-instance v1, Lcom/a4455jkjh/g;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/a4455jkjh/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, v0}, Lcom/a4455jkjh/g;->a(Lorg/xmlpull/v1/XmlPullParser;I)V

    iget-object v2, p0, Lcom/a4455jkjh/g;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_44
    const/4 v1, 0x3

    if-ne v0, v1, :cond_53

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/a4455jkjh/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    :cond_53
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_14
.end method
