.class public Lcom/sun/tools/javac/code/Kinds;
.super Ljava/lang/Object;
.source "Kinds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/code/Kinds$KindName;
    }
.end annotation


# static fields
.field public static final ABSENT_MTH:I = 0x47

.field public static final ABSENT_TYP:I = 0x48

.field public static final ABSENT_VAR:I = 0x44

.field public static final AMBIGUOUS:I = 0x41

.field public static final AllKinds:I = 0x1f

.field public static final ERR:I = 0x1f

.field public static final ERRONEOUS:I = 0x40

.field public static final HIDDEN:I = 0x42

.field public static final MTH:I = 0x10

.field public static final NIL:I = 0x0

.field public static final PCK:I = 0x1

.field public static final STATICERR:I = 0x43

.field public static final TYP:I = 0x2

.field public static final VAL:I = 0xc

.field public static final VAR:I = 0x4

.field public static final WRONG_MTH:I = 0x46

.field public static final WRONG_MTHS:I = 0x45


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static absentKind(I)Lcom/sun/tools/javac/code/Kinds$KindName;
    .registers 3

    .line 227
    packed-switch p0, :pswitch_data_24

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected kind: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/AssertionError;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 233
    :pswitch_1a  #0x48
    sget-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->CLASS:Lcom/sun/tools/javac/code/Kinds$KindName;

    :goto_1c
    return-object v0

    .line 231
    :pswitch_1d  #0x45, 0x46, 0x47
    sget-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->METHOD:Lcom/sun/tools/javac/code/Kinds$KindName;

    goto :goto_1c

    .line 229
    :pswitch_20  #0x44
    sget-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->VAR:Lcom/sun/tools/javac/code/Kinds$KindName;

    goto :goto_1c

    .line 227
    nop

    :pswitch_data_24
    .packed-switch 0x44
        :pswitch_20  #00000044
        :pswitch_1d  #00000045
        :pswitch_1d  #00000046
        :pswitch_1d  #00000047
        :pswitch_1a  #00000048
    .end packed-switch
.end method

.method public static kindName(I)Lcom/sun/tools/javac/code/Kinds$KindName;
    .registers 3

    .line 137
    const/4 v0, 0x1

    if-eq p0, v0, :cond_34

    const/4 v0, 0x2

    if-eq p0, v0, :cond_31

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2e

    const/16 v0, 0xc

    if-eq p0, v0, :cond_2b

    const/16 v0, 0x10

    if-ne p0, v0, :cond_14

    .line 142
    sget-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->METHOD:Lcom/sun/tools/javac/code/Kinds$KindName;

    :goto_13
    return-object v0

    .line 143
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected kind: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/AssertionError;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 141
    :cond_2b
    sget-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->VAL:Lcom/sun/tools/javac/code/Kinds$KindName;

    goto :goto_13

    .line 140
    :cond_2e
    sget-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->VAR:Lcom/sun/tools/javac/code/Kinds$KindName;

    goto :goto_13

    .line 139
    :cond_31
    sget-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->CLASS:Lcom/sun/tools/javac/code/Kinds$KindName;

    goto :goto_13

    .line 138
    :cond_34
    sget-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->PACKAGE:Lcom/sun/tools/javac/code/Kinds$KindName;

    goto :goto_13
.end method

.method public static kindName(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Kinds$KindName;
    .registers 3

    .line 150
    sget-object v0, Lcom/sun/tools/javac/code/Kinds$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/lang/model/element/ElementKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_52

    .line 186
    iget v0, p0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_36

    .line 189
    sget-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->VAL:Lcom/sun/tools/javac/code/Kinds$KindName;

    :goto_17
    return-object v0

    .line 183
    :pswitch_18  #0x10
    sget-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->INSTANCE_INIT:Lcom/sun/tools/javac/code/Kinds$KindName;

    goto :goto_17

    .line 181
    :pswitch_1b  #0xf
    sget-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->STATIC_INIT:Lcom/sun/tools/javac/code/Kinds$KindName;

    goto :goto_17

    .line 179
    :pswitch_1e  #0xe
    sget-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->METHOD:Lcom/sun/tools/javac/code/Kinds$KindName;

    goto :goto_17

    .line 176
    :pswitch_21  #0xd
    sget-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->CONSTRUCTOR:Lcom/sun/tools/javac/code/Kinds$KindName;

    goto :goto_17

    .line 173
    :pswitch_24  #0x7, 0x8, 0x9, 0xa, 0xb, 0xc
    sget-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->VAR:Lcom/sun/tools/javac/code/Kinds$KindName;

    goto :goto_17

    .line 165
    :pswitch_27  #0x6
    sget-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->TYPEVAR:Lcom/sun/tools/javac/code/Kinds$KindName;

    goto :goto_17

    .line 162
    :pswitch_2a  #0x5
    sget-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->INTERFACE:Lcom/sun/tools/javac/code/Kinds$KindName;

    goto :goto_17

    .line 159
    :pswitch_2d  #0x3, 0x4
    sget-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->CLASS:Lcom/sun/tools/javac/code/Kinds$KindName;

    goto :goto_17

    .line 155
    :pswitch_30  #0x2
    sget-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->ENUM:Lcom/sun/tools/javac/code/Kinds$KindName;

    goto :goto_17

    .line 152
    :pswitch_33  #0x1
    sget-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->PACKAGE:Lcom/sun/tools/javac/code/Kinds$KindName;

    goto :goto_17

    .line 191
    :cond_36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected kind: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Symbol;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/AssertionError;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 150
    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_33  #00000001
        :pswitch_30  #00000002
        :pswitch_2d  #00000003
        :pswitch_2d  #00000004
        :pswitch_2a  #00000005
        :pswitch_27  #00000006
        :pswitch_24  #00000007
        :pswitch_24  #00000008
        :pswitch_24  #00000009
        :pswitch_24  #0000000a
        :pswitch_24  #0000000b
        :pswitch_24  #0000000c
        :pswitch_21  #0000000d
        :pswitch_1e  #0000000e
        :pswitch_1b  #0000000f
        :pswitch_18  #00000010
    .end packed-switch
.end method

.method public static kindNames(I)Ljava/util/EnumSet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/sun/tools/javac/code/Kinds$KindName;",
            ">;"
        }
    .end annotation

    .line 198
    const-class v0, Lcom/sun/tools/javac/code/Kinds$KindName;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 199
    and-int/lit8 v0, p0, 0xc

    if-eqz v0, :cond_14

    .line 200
    and-int/lit8 v0, p0, 0xc

    const/4 v2, 0x4

    if-ne v0, v2, :cond_30

    sget-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->VAR:Lcom/sun/tools/javac/code/Kinds$KindName;

    :goto_11
    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 201
    :cond_14
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->METHOD:Lcom/sun/tools/javac/code/Kinds$KindName;

    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_1d
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_26

    sget-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->CLASS:Lcom/sun/tools/javac/code/Kinds$KindName;

    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_26
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_2f

    sget-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->PACKAGE:Lcom/sun/tools/javac/code/Kinds$KindName;

    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 204
    :cond_2f
    return-object v1

    .line 200
    :cond_30
    sget-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->VAL:Lcom/sun/tools/javac/code/Kinds$KindName;

    goto :goto_11
.end method

.method public static typeKindName(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Kinds$KindName;
    .registers 7

    const-wide/16 v4, 0x0

    .line 210
    iget v0, p0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xe

    if-eq v0, v1, :cond_1c

    iget v0, p0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1f

    iget-object v0, p0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 211
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flags()J

    move-result-wide v0

    const-wide/32 v2, 0x1000000

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1f

    .line 212
    :cond_1c
    sget-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->BOUND:Lcom/sun/tools/javac/code/Kinds$KindName;

    .line 220
    :goto_1e
    return-object v0

    .line 213
    :cond_1f
    iget v0, p0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_28

    .line 214
    sget-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->PACKAGE:Lcom/sun/tools/javac/code/Kinds$KindName;

    goto :goto_1e

    .line 215
    :cond_28
    iget-object v0, p0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-wide v0, v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flags_field:J

    const-wide/16 v2, 0x2000

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_36

    .line 216
    sget-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->ANNOTATION:Lcom/sun/tools/javac/code/Kinds$KindName;

    goto :goto_1e

    .line 217
    :cond_36
    iget-object v0, p0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-wide v0, v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flags_field:J

    const-wide/16 v2, 0x200

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_44

    .line 218
    sget-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->INTERFACE:Lcom/sun/tools/javac/code/Kinds$KindName;

    goto :goto_1e

    .line 220
    :cond_44
    sget-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->CLASS:Lcom/sun/tools/javac/code/Kinds$KindName;

    goto :goto_1e
.end method
