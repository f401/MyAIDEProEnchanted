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
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/s1243808733/util/Json2Bean$3$1;->this$0:Lcom/s1243808733/util/Json2Bean$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1

    packed-switch p2, :pswitch_data_0

    .line 307
    :goto_0
    return-void

    .line 325
    :pswitch_0
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$3$1;->this$0:Lcom/s1243808733/util/Json2Bean$3;

    iget-object v0, v0, Lcom/s1243808733/util/Json2Bean$3;->val$configurd:Lcom/s1243808733/util/Json2Java$Configurd;

    invoke-virtual {v0, p3}, Lcom/s1243808733/util/Json2Java$Configurd;->setToString(Z)Lcom/s1243808733/util/Json2Java$Configurd;

    goto :goto_0

    .line 322
    :pswitch_1
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$3$1;->this$0:Lcom/s1243808733/util/Json2Bean$3;

    iget-object v0, v0, Lcom/s1243808733/util/Json2Bean$3;->val$configurd:Lcom/s1243808733/util/Json2Java$Configurd;

    invoke-virtual {v0, p3}, Lcom/s1243808733/util/Json2Java$Configurd;->setUseInteger(Z)V

    goto :goto_0

    .line 319
    :pswitch_2
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$3$1;->this$0:Lcom/s1243808733/util/Json2Bean$3;

    iget-object v0, v0, Lcom/s1243808733/util/Json2Bean$3;->val$configurd:Lcom/s1243808733/util/Json2Java$Configurd;

    invoke-virtual {v0, p3}, Lcom/s1243808733/util/Json2Java$Configurd;->setUseArray(Z)Lcom/s1243808733/util/Json2Java$Configurd;

    goto :goto_0

    .line 316
    :pswitch_3
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$3$1;->this$0:Lcom/s1243808733/util/Json2Bean$3;

    iget-object v0, v0, Lcom/s1243808733/util/Json2Bean$3;->val$configurd:Lcom/s1243808733/util/Json2Java$Configurd;

    invoke-virtual {v0, p3}, Lcom/s1243808733/util/Json2Java$Configurd;->setPublicField(Z)Lcom/s1243808733/util/Json2Java$Configurd;

    goto :goto_0

    .line 313
    :pswitch_4
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$3$1;->this$0:Lcom/s1243808733/util/Json2Bean$3;

    iget-object v0, v0, Lcom/s1243808733/util/Json2Bean$3;->val$configurd:Lcom/s1243808733/util/Json2Java$Configurd;

    invoke-virtual {v0, p3}, Lcom/s1243808733/util/Json2Java$Configurd;->setSortMethod(Z)Lcom/s1243808733/util/Json2Java$Configurd;

    goto :goto_0

    .line 310
    :pswitch_5
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$3$1;->this$0:Lcom/s1243808733/util/Json2Bean$3;

    iget-object v0, v0, Lcom/s1243808733/util/Json2Bean$3;->val$configurd:Lcom/s1243808733/util/Json2Java$Configurd;

    invoke-virtual {v0, p3}, Lcom/s1243808733/util/Json2Java$Configurd;->setGetters(Z)Lcom/s1243808733/util/Json2Java$Configurd;

    goto :goto_0

    .line 307
    :pswitch_6
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$3$1;->this$0:Lcom/s1243808733/util/Json2Bean$3;

    iget-object v0, v0, Lcom/s1243808733/util/Json2Bean$3;->val$configurd:Lcom/s1243808733/util/Json2Java$Configurd;

    invoke-virtual {v0, p3}, Lcom/s1243808733/util/Json2Java$Configurd;->setSetters(Z)Lcom/s1243808733/util/Json2Java$Configurd;

    goto :goto_0

    .line 4294967295
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
