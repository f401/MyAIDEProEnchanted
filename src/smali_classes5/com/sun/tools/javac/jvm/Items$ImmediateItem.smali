.class Lcom/sun/tools/javac/jvm/Items$ImmediateItem;
.super Lcom/sun/tools/javac/jvm/Items$Item;
.source "Items.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/jvm/Items;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImmediateItem"
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/jvm/Items;

.field value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/jvm/Items;Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)V
    .registers 5

    .line 592
    iput-object p1, p0, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    .line 593
    invoke-static {p2}, Lcom/sun/tools/javac/jvm/Code;->typecode(Lcom/sun/tools/javac/code/Type;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/sun/tools/javac/jvm/Items$Item;-><init>(Lcom/sun/tools/javac/jvm/Items;I)V

    .line 594
    iput-object p3, p0, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;->value:Ljava/lang/Object;

    .line 595
    return-void
.end method

.method private isPosZero(D)Z
    .registers 8

    const-wide/16 v2, 0x0

    .line 667
    cmpl-double v0, p1, v2

    if-nez v0, :cond_f

    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    div-double/2addr v0, p1

    cmpl-double v0, v0, v2

    if-lez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private isPosZero(F)Z
    .registers 4

    const/4 v1, 0x0

    .line 660
    cmpl-float v0, p1, v1

    if-nez v0, :cond_e

    const/high16 v0, 0x3f800000  # 1.0f

    div-float/2addr v0, p1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private ldc()V
    .registers 4

    .line 598
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Items;->pool:Lcom/sun/tools/javac/jvm/Pool;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v0

    .line 599
    iget v1, p0, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;->typecode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_14

    iget v1, p0, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;->typecode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1e

    .line 600
    :cond_14
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v1, v1, Lcom/sun/tools/javac/jvm/Items;->code:Lcom/sun/tools/javac/jvm/Code;

    const/16 v2, 0x14

    invoke-virtual {v1, v2, v0}, Lcom/sun/tools/javac/jvm/Code;->emitop2(II)V

    .line 606
    :goto_1d
    return-void

    .line 601
    :cond_1e
    const/16 v1, 0xff

    if-gt v0, v1, :cond_2c

    .line 602
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v1, v1, Lcom/sun/tools/javac/jvm/Items;->code:Lcom/sun/tools/javac/jvm/Code;

    const/16 v2, 0x12

    invoke-virtual {v1, v2, v0}, Lcom/sun/tools/javac/jvm/Code;->emitop1(II)V

    goto :goto_1d

    .line 604
    :cond_2c
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v1, v1, Lcom/sun/tools/javac/jvm/Items;->code:Lcom/sun/tools/javac/jvm/Code;

    const/16 v2, 0x13

    invoke-virtual {v1, v2, v0}, Lcom/sun/tools/javac/jvm/Code;->emitop2(II)V

    goto :goto_1d
.end method


# virtual methods
.method coerce(I)Lcom/sun/tools/javac/jvm/Items$Item;
    .registers 8

    .line 676
    iget v0, p0, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;->typecode:I

    if-ne v0, p1, :cond_5

    .line 712
    :cond_4
    :goto_4
    return-object p0

    .line 679
    :cond_5
    if-eqz p1, :cond_b3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_9a

    const/4 v0, 0x2

    if-eq p1, v0, :cond_81

    const/4 v0, 0x3

    if-eq p1, v0, :cond_69

    const/4 v0, 0x5

    if-eq p1, v0, :cond_50

    const/4 v0, 0x6

    if-eq p1, v0, :cond_37

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1e

    .line 712
    invoke-super {p0, p1}, Lcom/sun/tools/javac/jvm/Items$Item;->coerce(I)Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object p0

    goto :goto_4

    .line 708
    :cond_1e
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v0, v1, Lcom/sun/tools/javac/jvm/Items;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v0, Lcom/sun/tools/javac/code/Symtab;->shortType:Lcom/sun/tools/javac/code/Type;

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    .line 710
    new-instance p0, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;-><init>(Lcom/sun/tools/javac/jvm/Items;Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)V

    goto :goto_4

    .line 704
    :cond_37
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v0, v1, Lcom/sun/tools/javac/jvm/Items;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v0, Lcom/sun/tools/javac/code/Symtab;->charType:Lcom/sun/tools/javac/code/Type;

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    .line 706
    new-instance p0, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;-><init>(Lcom/sun/tools/javac/jvm/Items;Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)V

    goto :goto_4

    .line 700
    :cond_50
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v0, v1, Lcom/sun/tools/javac/jvm/Items;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v0, Lcom/sun/tools/javac/code/Symtab;->byteType:Lcom/sun/tools/javac/code/Type;

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    .line 702
    new-instance p0, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;-><init>(Lcom/sun/tools/javac/jvm/Items;Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)V

    goto :goto_4

    .line 696
    :cond_69
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v0, v1, Lcom/sun/tools/javac/jvm/Items;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v0, Lcom/sun/tools/javac/code/Symtab;->doubleType:Lcom/sun/tools/javac/code/Type;

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    .line 698
    new-instance p0, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;-><init>(Lcom/sun/tools/javac/jvm/Items;Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)V

    goto :goto_4

    .line 692
    :cond_81
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v0, v1, Lcom/sun/tools/javac/jvm/Items;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v0, Lcom/sun/tools/javac/code/Symtab;->floatType:Lcom/sun/tools/javac/code/Type;

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    .line 694
    new-instance p0, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;-><init>(Lcom/sun/tools/javac/jvm/Items;Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 688
    :cond_9a
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v0, v1, Lcom/sun/tools/javac/jvm/Items;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v0, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    .line 690
    new-instance p0, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;-><init>(Lcom/sun/tools/javac/jvm/Items;Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 681
    :cond_b3
    iget v0, p0, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;->typecode:I

    invoke-static {v0}, Lcom/sun/tools/javac/jvm/Code;->truncate(I)I

    move-result v0

    if-eqz v0, :cond_4

    .line 684
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v0, v1, Lcom/sun/tools/javac/jvm/Items;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    .line 686
    new-instance p0, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;-><init>(Lcom/sun/tools/javac/jvm/Items;Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)V

    goto/16 :goto_4
.end method

.method load()Lcom/sun/tools/javac/jvm/Items$Item;
    .registers 7

    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    .line 609
    iget v0, p0, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;->typecode:I

    packed-switch v0, :pswitch_data_ca

    .line 650
    invoke-static {}, Lcom/sun/tools/javac/util/Assert;->error()V

    .line 623
    :goto_a
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    invoke-static {v0}, Lcom/sun/tools/javac/jvm/Items;->access$000(Lcom/sun/tools/javac/jvm/Items;)[Lcom/sun/tools/javac/jvm/Items$Item;

    move-result-object v0

    iget v1, p0, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;->typecode:I

    aget-object v0, v0, v1

    return-object v0

    .line 647
    :pswitch_15  #0x4
    invoke-direct {p0}, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;->ldc()V

    goto :goto_a

    .line 640
    :pswitch_19  #0x3
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 641
    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;->isPosZero(D)Z

    move-result v2

    if-nez v2, :cond_2b

    cmpl-double v2, v0, v4

    if-nez v2, :cond_36

    .line 642
    :cond_2b
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v2, v2, Lcom/sun/tools/javac/jvm/Items;->code:Lcom/sun/tools/javac/jvm/Code;

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0xe

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/jvm/Code;->emitop0(I)V

    goto :goto_a

    .line 644
    :cond_36
    invoke-direct {p0}, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;->ldc()V

    goto :goto_a

    .line 632
    :pswitch_3a  #0x2
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 633
    invoke-direct {p0, v0}, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;->isPosZero(F)Z

    move-result v1

    if-nez v1, :cond_54

    float-to-double v2, v0

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_54

    float-to-double v2, v0

    const-wide/high16 v4, 0x4000000000000000L  # 2.0

    cmpl-double v1, v2, v4

    if-nez v1, :cond_5f

    .line 634
    :cond_54
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v1, v1, Lcom/sun/tools/javac/jvm/Items;->code:Lcom/sun/tools/javac/jvm/Code;

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0xb

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Code;->emitop0(I)V

    goto :goto_a

    .line 636
    :cond_5f
    invoke-direct {p0}, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;->ldc()V

    goto :goto_a

    .line 625
    :pswitch_63  #0x1
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 626
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_77

    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_82

    .line 627
    :cond_77
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v2, v2, Lcom/sun/tools/javac/jvm/Items;->code:Lcom/sun/tools/javac/jvm/Code;

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x9

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/jvm/Code;->emitop0(I)V

    goto :goto_a

    .line 629
    :cond_82
    invoke-direct {p0}, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;->ldc()V

    goto :goto_a

    .line 614
    :pswitch_86  #0x0, 0x5, 0x6, 0x7
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 615
    const/4 v1, -0x1

    if-gt v1, v0, :cond_9f

    const/4 v1, 0x5

    if-gt v0, v1, :cond_9f

    .line 616
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v1, v1, Lcom/sun/tools/javac/jvm/Items;->code:Lcom/sun/tools/javac/jvm/Code;

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Code;->emitop0(I)V

    goto/16 :goto_a

    .line 617
    :cond_9f
    const/16 v1, -0x80

    if-gt v1, v0, :cond_b2

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_b2

    .line 618
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v1, v1, Lcom/sun/tools/javac/jvm/Items;->code:Lcom/sun/tools/javac/jvm/Code;

    const/16 v2, 0x10

    invoke-virtual {v1, v2, v0}, Lcom/sun/tools/javac/jvm/Code;->emitop1(II)V

    goto/16 :goto_a

    .line 619
    :cond_b2
    const/16 v1, -0x8000

    if-gt v1, v0, :cond_c5

    const/16 v1, 0x7fff

    if-gt v0, v1, :cond_c5

    .line 620
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    iget-object v1, v1, Lcom/sun/tools/javac/jvm/Items;->code:Lcom/sun/tools/javac/jvm/Code;

    const/16 v2, 0x11

    invoke-virtual {v1, v2, v0}, Lcom/sun/tools/javac/jvm/Code;->emitop2(II)V

    goto/16 :goto_a

    .line 622
    :cond_c5
    invoke-direct {p0}, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;->ldc()V

    goto/16 :goto_a

    .line 609
    :pswitch_data_ca
    .packed-switch 0x0
        :pswitch_86  #00000000
        :pswitch_63  #00000001
        :pswitch_3a  #00000002
        :pswitch_19  #00000003
        :pswitch_15  #00000004
        :pswitch_86  #00000005
        :pswitch_86  #00000006
        :pswitch_86  #00000007
    .end packed-switch
.end method

.method mkCond()Lcom/sun/tools/javac/jvm/Items$CondItem;
    .registers 3

    .line 671
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 672
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;->this$0:Lcom/sun/tools/javac/jvm/Items;

    if-eqz v0, :cond_13

    const/16 v0, 0xa7

    :goto_e
    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Items;->makeCondItem(I)Lcom/sun/tools/javac/jvm/Items$CondItem;

    move-result-object v0

    return-object v0

    :cond_13
    const/16 v0, 0xa8

    goto :goto_e
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "immediate("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Items$ImmediateItem;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
