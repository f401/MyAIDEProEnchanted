.class public Lorg/apache/tools/ant/types/selectors/SizeSelector;
.super Lorg/apache/tools/ant/types/selectors/BaseExtendSelector;
.source "SizeSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/types/selectors/SizeSelector$ByteUnits;,
        Lorg/apache/tools/ant/types/selectors/SizeSelector$SizeComparisons;
    }
.end annotation


# static fields
.field private static final END_POS:I = 0x24

.field private static final GIBI:J = 0x40000000L

.field private static final GIBI_POS:I = 0x16

.field private static final GIGA:J = 0x3b9aca00L

.field private static final GIGA_POS:I = 0x12

.field private static final KIBI:I = 0x400

.field private static final KIBI_POS:I = 0x4

.field private static final KILO:I = 0x3e8

.field private static final MEBI:I = 0x100000

.field private static final MEBI_POS:I = 0xd

.field private static final MEGA:I = 0xf4240

.field private static final MEGA_POS:I = 0x9

.field public static final SIZE_KEY:Ljava/lang/String; = "value"

.field private static final TEBI:J = 0x10000000000L

.field private static final TEBI_POS:I = 0x1f

.field private static final TERA:J = 0xe8d4a51000L

.field private static final TERA_POS:I = 0x1b

.field public static final UNITS_KEY:Ljava/lang/String; = "units"

.field public static final WHEN_KEY:Ljava/lang/String; = "when"


# instance fields
.field private multiplier:J

.field private size:J

.field private sizelimit:J

.field private when:Lorg/apache/tools/ant/types/Comparison;


# direct methods
.method public constructor <init>()V
    .registers 5

    const-wide/16 v2, -0x1

    .line 32
    invoke-direct {p0}, Lorg/apache/tools/ant/types/selectors/BaseExtendSelector;-><init>()V

    .line 59
    iput-wide v2, p0, Lorg/apache/tools/ant/types/selectors/SizeSelector;->size:J

    .line 60
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lorg/apache/tools/ant/types/selectors/SizeSelector;->multiplier:J

    .line 61
    iput-wide v2, p0, Lorg/apache/tools/ant/types/selectors/SizeSelector;->sizelimit:J

    .line 62
    sget-object v0, Lorg/apache/tools/ant/types/Comparison;->EQUAL:Lorg/apache/tools/ant/types/Comparison;

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/SizeSelector;->when:Lorg/apache/tools/ant/types/Comparison;

    return-void
.end method


# virtual methods
.method public isSelected(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Z
    .registers 10

    .line 218
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/SizeSelector;->validate()V

    .line 221
    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 222
    const/4 v0, 0x1

    .line 225
    :goto_a
    return v0

    .line 224
    :cond_b
    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/tools/ant/types/selectors/SizeSelector;->sizelimit:J

    sub-long/2addr v0, v2

    .line 225
    iget-object v2, p0, Lorg/apache/tools/ant/types/selectors/SizeSelector;->when:Lorg/apache/tools/ant/types/Comparison;

    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-nez v3, :cond_20

    const/4 v0, 0x0

    :goto_1b
    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/types/Comparison;->evaluate(I)Z

    move-result v0

    goto :goto_a

    :cond_20
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    div-long/2addr v0, v4

    long-to-int v0, v0

    goto :goto_1b
.end method

.method public varargs setParameters([Lorg/apache/tools/ant/types/Parameter;)V
    .registers 8

    .line 159
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/selectors/BaseExtendSelector;->setParameters([Lorg/apache/tools/ant/types/Parameter;)V

    .line 160
    if-eqz p1, :cond_84

    .line 161
    array-length v1, p1

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_84

    aget-object v2, p1, v0

    .line 162
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getName()Ljava/lang/String;

    move-result-object v3

    .line 163
    const-string v4, "value"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 165
    :try_start_17
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lorg/apache/tools/ant/types/selectors/SizeSelector;->setValue(J)V
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_22} :catch_25

    .line 161
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 166
    :catch_25
    move-exception v3

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid size setting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 167
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/selectors/SizeSelector;->setError(Ljava/lang/String;)V

    goto :goto_22

    .line 170
    :cond_3f
    const-string v4, "units"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 171
    new-instance v3, Lorg/apache/tools/ant/types/selectors/SizeSelector$ByteUnits;

    invoke-direct {v3}, Lorg/apache/tools/ant/types/selectors/SizeSelector$ByteUnits;-><init>()V

    .line 172
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/apache/tools/ant/types/selectors/SizeSelector$ByteUnits;->setValue(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0, v3}, Lorg/apache/tools/ant/types/selectors/SizeSelector;->setUnits(Lorg/apache/tools/ant/types/selectors/SizeSelector$ByteUnits;)V

    goto :goto_22

    .line 174
    :cond_57
    const-string v4, "when"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 175
    new-instance v3, Lorg/apache/tools/ant/types/selectors/SizeSelector$SizeComparisons;

    invoke-direct {v3}, Lorg/apache/tools/ant/types/selectors/SizeSelector$SizeComparisons;-><init>()V

    .line 176
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/apache/tools/ant/types/selectors/SizeSelector$SizeComparisons;->setValue(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0, v3}, Lorg/apache/tools/ant/types/selectors/SizeSelector;->setWhen(Lorg/apache/tools/ant/types/selectors/SizeSelector$SizeComparisons;)V

    goto :goto_22

    .line 179
    :cond_6f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid parameter "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/selectors/SizeSelector;->setError(Ljava/lang/String;)V

    goto :goto_22

    .line 183
    :cond_84
    return-void
.end method

.method public setUnits(Lorg/apache/tools/ant/types/selectors/SizeSelector$ByteUnits;)V
    .registers 8

    const-wide/16 v2, 0x0

    .line 116
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/selectors/SizeSelector$ByteUnits;->getIndex()I

    move-result v0

    .line 117
    iput-wide v2, p0, Lorg/apache/tools/ant/types/selectors/SizeSelector;->multiplier:J

    .line 118
    const/4 v1, -0x1

    if-le v0, v1, :cond_24

    const/4 v1, 0x4

    if-ge v0, v1, :cond_24

    .line 119
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lorg/apache/tools/ant/types/selectors/SizeSelector;->multiplier:J

    .line 135
    :cond_12
    :goto_12
    iget-wide v0, p0, Lorg/apache/tools/ant/types/selectors/SizeSelector;->multiplier:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_23

    iget-wide v2, p0, Lorg/apache/tools/ant/types/selectors/SizeSelector;->size:J

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-lez v4, :cond_23

    .line 136
    mul-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/tools/ant/types/selectors/SizeSelector;->sizelimit:J

    .line 138
    :cond_23
    return-void

    .line 120
    :cond_24
    const/16 v1, 0x9

    if-ge v0, v1, :cond_2d

    .line 121
    const-wide/16 v0, 0x400

    iput-wide v0, p0, Lorg/apache/tools/ant/types/selectors/SizeSelector;->multiplier:J

    goto :goto_12

    .line 122
    :cond_2d
    const/16 v1, 0xd

    if-ge v0, v1, :cond_37

    .line 123
    const-wide/32 v0, 0xf4240

    iput-wide v0, p0, Lorg/apache/tools/ant/types/selectors/SizeSelector;->multiplier:J

    goto :goto_12

    .line 124
    :cond_37
    const/16 v1, 0x12

    if-ge v0, v1, :cond_41

    .line 125
    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lorg/apache/tools/ant/types/selectors/SizeSelector;->multiplier:J

    goto :goto_12

    .line 126
    :cond_41
    const/16 v1, 0x16

    if-ge v0, v1, :cond_4b

    .line 127
    const-wide/32 v0, 0x3b9aca00

    iput-wide v0, p0, Lorg/apache/tools/ant/types/selectors/SizeSelector;->multiplier:J

    goto :goto_12

    .line 128
    :cond_4b
    const/16 v1, 0x1b

    if-ge v0, v1, :cond_55

    .line 129
    const-wide/32 v0, 0x40000000

    iput-wide v0, p0, Lorg/apache/tools/ant/types/selectors/SizeSelector;->multiplier:J

    goto :goto_12

    .line 130
    :cond_55
    const/16 v1, 0x1f

    if-ge v0, v1, :cond_61

    .line 131
    const-wide v0, 0xe8d4a51000L

    iput-wide v0, p0, Lorg/apache/tools/ant/types/selectors/SizeSelector;->multiplier:J

    goto :goto_12

    .line 132
    :cond_61
    const/16 v1, 0x24

    if-ge v0, v1, :cond_12

    .line 133
    const-wide v0, 0x10000000000L

    iput-wide v0, p0, Lorg/apache/tools/ant/types/selectors/SizeSelector;->multiplier:J

    goto :goto_12
.end method

.method public setValue(J)V
    .registers 8

    .line 83
    iput-wide p1, p0, Lorg/apache/tools/ant/types/selectors/SizeSelector;->size:J

    .line 84
    iget-wide v0, p0, Lorg/apache/tools/ant/types/selectors/SizeSelector;->multiplier:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_13

    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-lez v2, :cond_13

    .line 85
    mul-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/tools/ant/types/selectors/SizeSelector;->sizelimit:J

    .line 87
    :cond_13
    return-void
.end method

.method public setWhen(Lorg/apache/tools/ant/types/selectors/SizeSelector$SizeComparisons;)V
    .registers 2

    .line 148
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/SizeSelector;->when:Lorg/apache/tools/ant/types/Comparison;

    .line 149
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 71
    iget-wide v0, p0, Lorg/apache/tools/ant/types/selectors/SizeSelector;->sizelimit:J

    .line 72
    iget-object v2, p0, Lorg/apache/tools/ant/types/selectors/SizeSelector;->when:Lorg/apache/tools/ant/types/Comparison;

    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Comparison;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 71
    const-string v3, "{sizeselector value: %d compare: %s}"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v2, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verifySettings()V
    .registers 7

    const-wide/16 v4, 0x0

    .line 196
    iget-wide v0, p0, Lorg/apache/tools/ant/types/selectors/SizeSelector;->size:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_e

    .line 197
    const-string v0, "The value attribute is required, and must be positive"

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/SizeSelector;->setError(Ljava/lang/String;)V

    .line 203
    :cond_d
    :goto_d
    return-void

    .line 198
    :cond_e
    iget-wide v0, p0, Lorg/apache/tools/ant/types/selectors/SizeSelector;->multiplier:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_1c

    .line 199
    const-string v0, "Invalid Units supplied, must be K,Ki,M,Mi,G,Gi,T,or Ti"

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/SizeSelector;->setError(Ljava/lang/String;)V

    goto :goto_d

    .line 200
    :cond_1c
    iget-wide v0, p0, Lorg/apache/tools/ant/types/selectors/SizeSelector;->sizelimit:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_d

    .line 201
    const-string v0, "Internal error: Code is not setting sizelimit correctly"

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/SizeSelector;->setError(Ljava/lang/String;)V

    goto :goto_d
.end method
