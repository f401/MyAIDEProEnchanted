.class public final Lcom/google/android/gms/common/util/l;
.super Ljava/lang/Object;


# static fields
.field private static final DW:Ljava/util/regex/Pattern;

.field private static final j6:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\\\."

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/l;->j6:Ljava/util/regex/Pattern;

    const-string v0, "[\\\\\"/\u0008\u000c\n\r\t]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/l;->DW:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static j6(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/google/android/gms/common/util/l;->DW:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_6

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :cond_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0xc

    if-eq v1, v3, :cond_5

    const/16 v3, 0xd

    if-eq v1, v3, :cond_4

    const/16 v3, 0x22

    if-eq v1, v3, :cond_3

    const/16 v3, 0x2f

    if-eq v1, v3, :cond_2

    const/16 v3, 0x5c

    if-eq v1, v3, :cond_1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "\\\\b"

    :goto_1
    invoke-virtual {v2, v0, v1}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    :pswitch_1
    const-string v1, "\\\\n"

    goto :goto_1

    :pswitch_2
    const-string v1, "\\\\t"

    goto :goto_1

    :cond_1
    const-string v1, "\\\\\\\\"

    goto :goto_1

    :cond_2
    const-string v1, "\\\\/"

    goto :goto_1

    :cond_3
    const-string v1, "\\\\\\\""

    goto :goto_1

    :cond_4
    const-string v1, "\\\\r"

    goto :goto_1

    :cond_5
    const-string v1, "\\\\f"

    goto :goto_1

    :cond_6
    if-nez v0, :cond_8

    :cond_7
    :goto_2
    return-object p0

    :cond_8
    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
