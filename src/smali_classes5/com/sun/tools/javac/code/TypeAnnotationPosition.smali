.class public Lcom/sun/tools/javac/code/TypeAnnotationPosition;
.super Ljava/lang/Object;
.source "TypeAnnotationPosition.java"


# instance fields
.field public bound_index:I

.field public isValidOffset:Z

.field public location:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public lvarIndex:[I

.field public lvarLength:[I

.field public lvarOffset:[I

.field public offset:I

.field public parameter_index:I

.field public pos:I

.field public type:Lcom/sun/tools/javac/code/TargetType;

.field public type_index:I

.field public wildcard_position:Lcom/sun/tools/javac/code/TypeAnnotationPosition;


# direct methods
.method public constructor <init>()V
    .registers 5

    const/4 v3, -0x1

    const/high16 v2, -0x80000000

    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-object v0, Lcom/sun/tools/javac/code/TargetType;->UNKNOWN:Lcom/sun/tools/javac/code/TargetType;

    iput-object v0, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->type:Lcom/sun/tools/javac/code/TargetType;

    .line 42
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->location:Lcom/sun/tools/javac/util/List;

    .line 45
    iput v3, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->pos:I

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->isValidOffset:Z

    .line 49
    iput v3, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->offset:I

    .line 52
    iput-object v1, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->lvarOffset:[I

    .line 53
    iput-object v1, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->lvarLength:[I

    .line 54
    iput-object v1, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->lvarIndex:[I

    .line 57
    iput v2, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->bound_index:I

    .line 60
    iput v2, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->parameter_index:I

    .line 63
    iput v2, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->type_index:I

    .line 66
    iput-object v1, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->wildcard_position:Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    return-void
.end method


# virtual methods
.method public emitToClassfile()Z
    .registers 3

    .line 189
    iget-object v0, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->type:Lcom/sun/tools/javac/code/TargetType;

    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->WILDCARD_BOUND:Lcom/sun/tools/javac/code/TargetType;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->type:Lcom/sun/tools/javac/code/TargetType;

    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->WILDCARD_BOUND_GENERIC_OR_ARRAY:Lcom/sun/tools/javac/code/TargetType;

    if-ne v0, v1, :cond_11

    .line 191
    :cond_c
    iget-object v0, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->wildcard_position:Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    iget-boolean v0, v0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->isValidOffset:Z

    .line 193
    :goto_10
    return v0

    :cond_11
    iget-object v0, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->type:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/TargetType;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->isValidOffset:Z

    if-eqz v0, :cond_1f

    :cond_1d
    const/4 v0, 0x1

    goto :goto_10

    :cond_1f
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    iget-object v0, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->type:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    sget-object v0, Lcom/sun/tools/javac/code/TypeAnnotationPosition$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    iget-object v2, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->type:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_102

    .line 88
    :goto_1c
    :pswitch_1c  #0xb
    iget-object v0, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->type:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/TargetType;->hasLocation()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 171
    const-string v0, ", location = ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    iget-object v0, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->location:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 173
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :cond_33
    const-string v0, ", pos = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget v0, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->pos:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 154
    :pswitch_47  #0x1a, 0x1b
    const-string v0, ", offset = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    iget v0, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->offset:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    const-string v0, ", type_index = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    iget v0, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->type_index:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1c

    .line 148
    :pswitch_5c  #0x19
    const-string v0, ", param_index = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    iget v0, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->parameter_index:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1c

    .line 143
    :pswitch_67  #0x17, 0x18
    const-string v0, ", offset = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget v0, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->offset:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1c

    .line 138
    :pswitch_72  #0x16
    const-string v0, ", type_index = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget v0, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->type_index:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1c

    .line 133
    :pswitch_7d  #0x14, 0x15
    const-string v0, ", type_index = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    iget v0, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->type_index:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1c

    .line 127
    :pswitch_88  #0x12, 0x13
    const-string v0, ", wild_card = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget-object v0, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->wildcard_position:Lcom/sun/tools/javac/code/TypeAnnotationPosition;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1c

    .line 119
    :pswitch_93  #0xe, 0xf, 0x10, 0x11
    const-string v0, ", param_index = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget v0, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->parameter_index:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    const-string v0, ", bound_index = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget v0, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->bound_index:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_1c

    .line 111
    :pswitch_a9  #0xc, 0xd
    const-string v0, ", param_index = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget v0, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->parameter_index:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_1c

    .line 92
    :pswitch_b5  #0x9, 0xa
    const-string v0, ", {"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const/4 v0, 0x0

    :goto_bb
    iget-object v2, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->lvarOffset:[I

    array-length v2, v2

    if-ge v0, v2, :cond_ee

    .line 94
    if-eqz v0, :cond_c7

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    :cond_c7
    const-string v2, ", start_pc = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget-object v2, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->lvarOffset:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    const-string v2, ", length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget-object v2, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->lvarLength:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    const-string v2, ", index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget-object v2, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->lvarIndex:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_bb

    .line 102
    :cond_ee
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1c

    .line 86
    :pswitch_f5  #0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8
    const-string v0, ", offset = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget v0, p0, Lcom/sun/tools/javac/code/TypeAnnotationPosition;->offset:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_1c

    .line 74
    nop

    :pswitch_data_102
    .packed-switch 0x1
        :pswitch_f5  #00000001
        :pswitch_f5  #00000002
        :pswitch_f5  #00000003
        :pswitch_f5  #00000004
        :pswitch_f5  #00000005
        :pswitch_f5  #00000006
        :pswitch_f5  #00000007
        :pswitch_f5  #00000008
        :pswitch_b5  #00000009
        :pswitch_b5  #0000000a
        :pswitch_1c  #0000000b
        :pswitch_a9  #0000000c
        :pswitch_a9  #0000000d
        :pswitch_93  #0000000e
        :pswitch_93  #0000000f
        :pswitch_93  #00000010
        :pswitch_93  #00000011
        :pswitch_88  #00000012
        :pswitch_88  #00000013
        :pswitch_7d  #00000014
        :pswitch_7d  #00000015
        :pswitch_72  #00000016
        :pswitch_67  #00000017
        :pswitch_67  #00000018
        :pswitch_5c  #00000019
        :pswitch_47  #0000001a
        :pswitch_47  #0000001b
    .end packed-switch
.end method
