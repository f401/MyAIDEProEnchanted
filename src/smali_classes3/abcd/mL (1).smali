.class public Labcd/mL;
.super Ljava/lang/Object;


# instance fields
.field public DW:Ljava/lang/Object;

.field public j6:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Labcd/mL;->j6:I

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/mL;->DW:Ljava/lang/Object;

    iput p1, p0, Labcd/mL;->j6:I

    iput-object p2, p0, Labcd/mL;->DW:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Labcd/mL;->j6:I

    packed-switch v1, :pswitch_data_34

    goto :goto_2f

    :pswitch_b  #0x6
    const-string v1, "COLON(:)"

    goto :goto_2c

    :pswitch_e  #0x5
    const-string v1, "COMMA(,)"

    goto :goto_2c

    :pswitch_11  #0x4
    const-string v1, "RIGHT SQUARE(])"

    goto :goto_2c

    :pswitch_14  #0x3
    const-string v1, "LEFT SQUARE([)"

    goto :goto_2c

    :pswitch_17  #0x2
    const-string v1, "RIGHT BRACE(})"

    goto :goto_2c

    :pswitch_1a  #0x1
    const-string v1, "LEFT BRACE({)"

    goto :goto_2c

    :pswitch_1d  #0x0
    const-string v1, "VALUE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Labcd/mL;->DW:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ")"

    goto :goto_2c

    :pswitch_2a  #0xffffffff
    const-string v1, "END OF FILE"

    :goto_2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2f
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_34
    .packed-switch -0x1
        :pswitch_2a  #ffffffff
        :pswitch_1d  #00000000
        :pswitch_1a  #00000001
        :pswitch_17  #00000002
        :pswitch_14  #00000003
        :pswitch_11  #00000004
        :pswitch_e  #00000005
        :pswitch_b  #00000006
    .end packed-switch
.end method
