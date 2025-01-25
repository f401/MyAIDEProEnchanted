.class public final Lcom/google/android/gms/common/util/l;
.super Ljava/lang/Object;


# static fields
.field private static final DW:Ljava/util/regex/Pattern;

.field private static final j6:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "\\\\."

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/l;->j6:Ljava/util/regex/Pattern;

    const-string v0, "[\\\\\"/\b\f\n\r\t]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/l;->DW:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_60

    sget-object v0, Lcom/google/android/gms/common/util/l;->DW:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const/4 v1, 0x0

    :goto_d
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_56

    if-nez v1, :cond_1a

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :cond_1a
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_50

    const/16 v3, 0xd

    if-eq v2, v3, :cond_4d

    const/16 v3, 0x22

    if-eq v2, v3, :cond_4a

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_47

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_44

    packed-switch v2, :pswitch_data_62

    goto :goto_d

    :pswitch_3b  #0xa
    const-string v2, "\\\\n"

    goto :goto_52

    :pswitch_3e  #0x9
    const-string v2, "\\\\t"

    goto :goto_52

    :pswitch_41  #0x8
    const-string v2, "\\\\b"

    goto :goto_52

    :cond_44
    const-string v2, "\\\\\\\\"

    goto :goto_52

    :cond_47
    const-string v2, "\\\\/"

    goto :goto_52

    :cond_4a
    const-string v2, "\\\\\\\""

    goto :goto_52

    :cond_4d
    const-string v2, "\\\\r"

    goto :goto_52

    :cond_50
    const-string v2, "\\\\f"

    :goto_52
    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_d

    :cond_56
    if-nez v1, :cond_59

    return-object p0

    :cond_59
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_60
    return-object p0

    nop

    :pswitch_data_62
    .packed-switch 0x8
        :pswitch_41  #00000008
        :pswitch_3e  #00000009
        :pswitch_3b  #0000000a
    .end packed-switch
.end method
