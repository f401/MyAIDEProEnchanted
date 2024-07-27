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
    packed-switch p0, :pswitch_data_0

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
    :pswitch_0
    sget-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->CLASS:Lcom/sun/tools/javac/code/Kinds$KindName;

    :goto_0
    return-object v0

    .line 231
    :pswitch_1
    sget-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->METHOD:Lcom/sun/tools/javac/code/Kinds$KindName;

    goto :goto_0

    .line 229
    :pswitch_2
    sget-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->VAR:Lcom/sun/tools/javac/code/Kinds$KindName;

    goto :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static kindName(I)Lcom/sun/tools/javac/code/Kinds$KindName;
    .registers 3

    .line 137
    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10

    if-ne p0, v0, :cond_0

    .line 142
    sget-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->METHOD:Lcom/sun/tools/javac/code/Kinds$KindName;

    :goto_0
    return-object v0

    .line 143
    :cond_0
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
    :cond_1
    sget-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->VAL:Lcom/sun/tools/javac/code/Kinds$KindName;

    goto :goto_0

    .line 140
    :cond_2
    sget-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->VAR:Lcom/sun/tools/javac/code/Kinds$KindName;

    goto :goto_0

    .line 139
    :cond_3
    sget-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->CLASS:Lcom/sun/tools/javac/code/Kinds$KindName;

    goto :goto_0

    .line 138
    :cond_4
    sget-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->PACKAGE:Lcom/sun/tools/javac/code/Kinds$KindName;

    goto :goto_0
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

    packed-switch v0, :pswitch_data_0

    .line 186
    iget v0, p0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 189
    sget-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->VAL:Lcom/sun/tools/javac/code/Kinds$KindName;

    :goto_0
    return-object v0

    .line 183
    :pswitch_0
    sget-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->INSTANCE_INIT:Lcom/sun/tools/javac/code/Kinds$KindName;

    goto :goto_0

    .line 181
    :pswitch_1
    sget-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->STATIC_INIT:Lcom/sun/tools/javac/code/Kinds$KindName;

    goto :goto_0

    .line 179
    :pswitch_2
    sget-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->METHOD:Lcom/sun/tools/javac/code/Kinds$KindName;

    goto :goto_0

    .line 176
    :pswitch_3
    sget-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->CONSTRUCTOR:Lcom/sun/tools/javac/code/Kinds$KindName;

    goto :goto_0

    .line 173
    :pswitch_4
    sget-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->VAR:Lcom/sun/tools/javac/code/Kinds$KindName;

    goto :goto_0

    .line 165
    :pswitch_5
    sget-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->TYPEVAR:Lcom/sun/tools/javac/code/Kinds$KindName;

    goto :goto_0

    .line 162
    :pswitch_6
    sget-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->INTERFACE:Lcom/sun/tools/javac/code/Kinds$KindName;

    goto :goto_0

    .line 159
    :pswitch_7
    sget-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->CLASS:Lcom/sun/tools/javac/code/Kinds$KindName;

    goto :goto_0

    .line 155
    :pswitch_8
    sget-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->ENUM:Lcom/sun/tools/javac/code/Kinds$KindName;

    goto :goto_0

    .line 152
    :pswitch_9
    sget-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->PACKAGE:Lcom/sun/tools/javac/code/Kinds$KindName;

    goto :goto_0

    .line 191
    :cond_0
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

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
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

    if-eqz v0, :cond_0

    .line 200
    and-int/lit8 v0, p0, 0xc

    const/4 v2, 0x4

    if-ne v0, v2, :cond_4

    sget-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->VAR:Lcom/sun/tools/javac/code/Kinds$KindName;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 201
    :cond_0
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->METHOD:Lcom/sun/tools/javac/code/Kinds$KindName;

    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_1
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->CLASS:Lcom/sun/tools/javac/code/Kinds$KindName;

    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_2
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_3

    sget-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->PACKAGE:Lcom/sun/tools/javac/code/Kinds$KindName;

    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 204
    :cond_3
    return-object v1

    .line 200
    :cond_4
    sget-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->VAL:Lcom/sun/tools/javac/code/Kinds$KindName;

    goto :goto_0
.end method

.method public static typeKindName(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Kinds$KindName;
    .registers 7

    const-wide/16 v4, 0x0

    .line 210
    iget v0, p0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 211
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flags()J

    move-result-wide v0

    const-wide/32 v2, 0x1000000

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 212
    :cond_0
    sget-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->BOUND:Lcom/sun/tools/javac/code/Kinds$KindName;

    .line 220
    :goto_0
    return-object v0

    .line 213
    :cond_1
    iget v0, p0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 214
    sget-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->PACKAGE:Lcom/sun/tools/javac/code/Kinds$KindName;

    goto :goto_0

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-wide v0, v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flags_field:J

    const-wide/16 v2, 0x2000

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    .line 216
    sget-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->ANNOTATION:Lcom/sun/tools/javac/code/Kinds$KindName;

    goto :goto_0

    .line 217
    :cond_3
    iget-object v0, p0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-wide v0, v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flags_field:J

    const-wide/16 v2, 0x200

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_4

    .line 218
    sget-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->INTERFACE:Lcom/sun/tools/javac/code/Kinds$KindName;

    goto :goto_0

    .line 220
    :cond_4
    sget-object v0, Lcom/sun/tools/javac/code/Kinds$KindName;->CLASS:Lcom/sun/tools/javac/code/Kinds$KindName;

    goto :goto_0
.end method
