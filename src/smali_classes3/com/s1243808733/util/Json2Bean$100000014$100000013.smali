.class Lcom/s1243808733/util/Json2Bean$100000014$100000013;
.super Ljava/lang/Object;
.source "Json2Bean.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/util/Json2Bean$100000014;

.field private final val$configurd:Lcom/s1243808733/util/Json2Java$Configurd;


# direct methods
.method constructor <init>(Lcom/s1243808733/util/Json2Bean$100000014;Lcom/s1243808733/util/Json2Java$Configurd;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/util/Json2Bean$100000014$100000013;->this$0:Lcom/s1243808733/util/Json2Bean$100000014;

    iput-object p2, p0, Lcom/s1243808733/util/Json2Bean$100000014$100000013;->val$configurd:Lcom/s1243808733/util/Json2Java$Configurd;

    return-void
.end method

.method static access$0(Lcom/s1243808733/util/Json2Bean$100000014$100000013;)Lcom/s1243808733/util/Json2Bean$100000014;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$100000014$100000013;->this$0:Lcom/s1243808733/util/Json2Bean$100000014;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "IZ)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 309
    packed-switch p2, :pswitch_data_0

    .line 330
    :goto_0
    return-void

    .line 311
    :pswitch_0
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$100000014$100000013;->val$configurd:Lcom/s1243808733/util/Json2Java$Configurd;

    invoke-virtual {v0, p3}, Lcom/s1243808733/util/Json2Java$Configurd;->setSetters(Z)Lcom/s1243808733/util/Json2Java$Configurd;

    goto :goto_0

    .line 314
    :pswitch_1
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$100000014$100000013;->val$configurd:Lcom/s1243808733/util/Json2Java$Configurd;

    invoke-virtual {v0, p3}, Lcom/s1243808733/util/Json2Java$Configurd;->setGetters(Z)Lcom/s1243808733/util/Json2Java$Configurd;

    goto :goto_0

    .line 317
    :pswitch_2
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$100000014$100000013;->val$configurd:Lcom/s1243808733/util/Json2Java$Configurd;

    invoke-virtual {v0, p3}, Lcom/s1243808733/util/Json2Java$Configurd;->setSortMethod(Z)Lcom/s1243808733/util/Json2Java$Configurd;

    goto :goto_0

    .line 320
    :pswitch_3
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$100000014$100000013;->val$configurd:Lcom/s1243808733/util/Json2Java$Configurd;

    invoke-virtual {v0, p3}, Lcom/s1243808733/util/Json2Java$Configurd;->setPublicField(Z)Lcom/s1243808733/util/Json2Java$Configurd;

    goto :goto_0

    .line 323
    :pswitch_4
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$100000014$100000013;->val$configurd:Lcom/s1243808733/util/Json2Java$Configurd;

    invoke-virtual {v0, p3}, Lcom/s1243808733/util/Json2Java$Configurd;->setUseArray(Z)Lcom/s1243808733/util/Json2Java$Configurd;

    goto :goto_0

    .line 326
    :pswitch_5
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$100000014$100000013;->val$configurd:Lcom/s1243808733/util/Json2Java$Configurd;

    invoke-virtual {v0, p3}, Lcom/s1243808733/util/Json2Java$Configurd;->setUseInteger(Z)V

    goto :goto_0

    .line 329
    :pswitch_6
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$100000014$100000013;->val$configurd:Lcom/s1243808733/util/Json2Java$Configurd;

    invoke-virtual {v0, p3}, Lcom/s1243808733/util/Json2Java$Configurd;->setToString(Z)Lcom/s1243808733/util/Json2Java$Configurd;

    goto :goto_0

    .line 309
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
