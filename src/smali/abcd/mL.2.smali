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

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget v0, p0, Labcd/mL;->j6:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "COLON(:)"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_1
    const-string v0, "COMMA(,)"

    goto :goto_1

    :pswitch_2
    const-string v0, "RIGHT SQUARE(])"

    goto :goto_1

    :pswitch_3
    const-string v0, "LEFT SQUARE([)"

    goto :goto_1

    :pswitch_4
    const-string v0, "RIGHT BRACE(})"

    goto :goto_1

    :pswitch_5
    const-string v0, "LEFT BRACE({)"

    goto :goto_1

    :pswitch_6
    const-string v0, "VALUE("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Labcd/mL;->DW:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v0, ")"

    goto :goto_1

    :pswitch_7
    const-string v0, "END OF FILE"

    goto :goto_1

    :pswitch_data_0
    .packed-switch -0x1
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
