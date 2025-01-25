.class Lcom/s1243808733/util/Json2Bean$3$1;
.super Ljava/lang/Object;
.source "Json2Bean.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/util/Json2Bean$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/util/Json2Bean$3;


# direct methods
.method constructor <init>(Lcom/s1243808733/util/Json2Bean$3;)V
    .registers 2

    .line 301
    iput-object p1, p0, Lcom/s1243808733/util/Json2Bean$3$1;->this$0:Lcom/s1243808733/util/Json2Bean$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .registers 4

    packed-switch p2, :pswitch_data_3c

    goto :goto_3b

    .line 325
    :pswitch_4  #0x6
    iget-object p1, p0, Lcom/s1243808733/util/Json2Bean$3$1;->this$0:Lcom/s1243808733/util/Json2Bean$3;

    iget-object p1, p1, Lcom/s1243808733/util/Json2Bean$3;->val$configurd:Lcom/s1243808733/util/Json2Java$Configurd;

    invoke-virtual {p1, p3}, Lcom/s1243808733/util/Json2Java$Configurd;->setToString(Z)Lcom/s1243808733/util/Json2Java$Configurd;

    goto :goto_3b

    .line 322
    :pswitch_c  #0x5
    iget-object p1, p0, Lcom/s1243808733/util/Json2Bean$3$1;->this$0:Lcom/s1243808733/util/Json2Bean$3;

    iget-object p1, p1, Lcom/s1243808733/util/Json2Bean$3;->val$configurd:Lcom/s1243808733/util/Json2Java$Configurd;

    invoke-virtual {p1, p3}, Lcom/s1243808733/util/Json2Java$Configurd;->setUseInteger(Z)V

    goto :goto_3b

    .line 319
    :pswitch_14  #0x4
    iget-object p1, p0, Lcom/s1243808733/util/Json2Bean$3$1;->this$0:Lcom/s1243808733/util/Json2Bean$3;

    iget-object p1, p1, Lcom/s1243808733/util/Json2Bean$3;->val$configurd:Lcom/s1243808733/util/Json2Java$Configurd;

    invoke-virtual {p1, p3}, Lcom/s1243808733/util/Json2Java$Configurd;->setUseArray(Z)Lcom/s1243808733/util/Json2Java$Configurd;

    goto :goto_3b

    .line 316
    :pswitch_1c  #0x3
    iget-object p1, p0, Lcom/s1243808733/util/Json2Bean$3$1;->this$0:Lcom/s1243808733/util/Json2Bean$3;

    iget-object p1, p1, Lcom/s1243808733/util/Json2Bean$3;->val$configurd:Lcom/s1243808733/util/Json2Java$Configurd;

    invoke-virtual {p1, p3}, Lcom/s1243808733/util/Json2Java$Configurd;->setPublicField(Z)Lcom/s1243808733/util/Json2Java$Configurd;

    goto :goto_3b

    .line 313
    :pswitch_24  #0x2
    iget-object p1, p0, Lcom/s1243808733/util/Json2Bean$3$1;->this$0:Lcom/s1243808733/util/Json2Bean$3;

    iget-object p1, p1, Lcom/s1243808733/util/Json2Bean$3;->val$configurd:Lcom/s1243808733/util/Json2Java$Configurd;

    invoke-virtual {p1, p3}, Lcom/s1243808733/util/Json2Java$Configurd;->setSortMethod(Z)Lcom/s1243808733/util/Json2Java$Configurd;

    goto :goto_3b

    .line 310
    :pswitch_2c  #0x1
    iget-object p1, p0, Lcom/s1243808733/util/Json2Bean$3$1;->this$0:Lcom/s1243808733/util/Json2Bean$3;

    iget-object p1, p1, Lcom/s1243808733/util/Json2Bean$3;->val$configurd:Lcom/s1243808733/util/Json2Java$Configurd;

    invoke-virtual {p1, p3}, Lcom/s1243808733/util/Json2Java$Configurd;->setGetters(Z)Lcom/s1243808733/util/Json2Java$Configurd;

    goto :goto_3b

    .line 307
    :pswitch_34  #0x0
    iget-object p1, p0, Lcom/s1243808733/util/Json2Bean$3$1;->this$0:Lcom/s1243808733/util/Json2Bean$3;

    iget-object p1, p1, Lcom/s1243808733/util/Json2Bean$3;->val$configurd:Lcom/s1243808733/util/Json2Java$Configurd;

    invoke-virtual {p1, p3}, Lcom/s1243808733/util/Json2Java$Configurd;->setSetters(Z)Lcom/s1243808733/util/Json2Java$Configurd;

    :goto_3b
    return-void

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_34  #00000000
        :pswitch_2c  #00000001
        :pswitch_24  #00000002
        :pswitch_1c  #00000003
        :pswitch_14  #00000004
        :pswitch_c  #00000005
        :pswitch_4  #00000006
    .end packed-switch
.end method
