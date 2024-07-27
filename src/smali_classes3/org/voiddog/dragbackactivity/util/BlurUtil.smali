.class public Lorg/voiddog/dragbackactivity/util/BlurUtil;
.super Ljava/lang/Object;
.source "BlurUtil.java"


# static fields
.field private static final MAX_BLUR_IMG_SIZE:I = 0x3e8

.field private static S_DRAW_BITMAP:Landroid/graphics/Bitmap;


# direct methods
.method static final constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Bitmap;

    sput-object v0, Lorg/voiddog/dragbackactivity/util/BlurUtil;->S_DRAW_BITMAP:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blurWithRenderScript(Landroid/content/Context;Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .registers 9
    .annotation runtime Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 84
    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 86
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v0

    move-object v1, v0

    .line 92
    :goto_0
    if-eqz p3, :cond_1

    move-object v0, p1

    .line 101
    :goto_1
    sget-object v2, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v3, 0x1

    invoke-static {v1, p1, v2, v3}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v2

    .line 103
    invoke-virtual {v2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v3

    .line 104
    invoke-static {v1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v4

    .line 105
    invoke-virtual {v4, p2}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 106
    invoke-virtual {v4, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 107
    invoke-virtual {v4, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 108
    invoke-virtual {v3, v0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 109
    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->destroy()V

    .line 111
    return-object v0

    .line 89
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method public static fastBlur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .registers 40

    .line 130
    if-eqz p2, :cond_0

    move-object/from16 v2, p0

    .line 137
    :goto_0
    const/4 v3, 0x1

    move/from16 v0, p1

    if-ge v0, v3, :cond_1

    .line 138
    const/4 v2, 0x0

    check-cast v2, Landroid/graphics/Bitmap;

    .line 332
    :goto_1
    return-object v2

    .line 134
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 142
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 144
    mul-int v3, v5, v9

    new-array v3, v3, [I

    .line 145
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 147
    add-int/lit8 v27, v5, -0x1

    .line 148
    add-int/lit8 v28, v9, -0x1

    .line 149
    mul-int v4, v5, v9

    .line 150
    add-int v6, p1, p1

    add-int/lit8 v29, v6, 0x1

    .line 152
    new-array v0, v4, [I

    move-object/from16 v30, v0

    .line 153
    new-array v0, v4, [I

    move-object/from16 v31, v0

    .line 154
    new-array v0, v4, [I

    move-object/from16 v32, v0

    .line 155
    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-array v0, v4, [I

    move-object/from16 v33, v0

    .line 158
    add-int/lit8 v4, v29, 0x1

    shr-int/lit8 v4, v4, 0x1

    .line 159
    mul-int v6, v4, v4

    .line 160
    mul-int/lit16 v4, v6, 0x100

    new-array v0, v4, [I

    move-object/from16 v34, v0

    .line 161
    const/4 v4, 0x0

    :goto_2
    mul-int/lit16 v7, v6, 0x100

    if-lt v4, v7, :cond_2

    .line 165
    const/4 v4, 0x3

    move/from16 v0, v29

    filled-new-array {v0, v4}, [I

    move-result-object v4

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    .line 168
    add-int/lit8 v35, p1, 0x1

    .line 173
    const/4 v6, 0x0

    const/4 v15, 0x0

    const/4 v7, 0x0

    move/from16 v25, v6

    move/from16 v26, v7

    .line 176
    :goto_3
    move/from16 v0, v26

    if-lt v0, v9, :cond_3

    .line 249
    const/16 v19, 0x0

    :goto_4
    move/from16 v0, v19

    if-lt v0, v5, :cond_8

    .line 330
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto :goto_1

    .line 162
    :cond_2
    div-int v7, v4, v6

    aput v7, v34, v4

    .line 161
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 177
    :cond_3
    move/from16 v0, p1

    neg-int v13, v0

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/16 v17, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    :goto_5
    move/from16 v0, p1

    if-le v13, v0, :cond_4

    .line 200
    const/16 v18, 0x0

    move/from16 v13, p1

    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v21, v8

    move/from16 v22, v10

    move/from16 v23, v11

    move/from16 v24, v12

    :goto_6
    move/from16 v0, v18

    if-lt v0, v5, :cond_6

    .line 247
    add-int v6, v25, v5

    add-int/lit8 v7, v26, 0x1

    move/from16 v25, v6

    move/from16 v26, v7

    goto :goto_3

    .line 179
    :cond_4
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v18

    move/from16 v0, v27

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v18

    add-int v18, v18, v15

    aget v18, v3, v18

    .line 180
    add-int v19, v13, p1

    aget-object v19, v4, v19

    .line 181
    const/16 v20, 0x0

    const/high16 v21, 0xff0000

    and-int v21, v21, v18

    shr-int/lit8 v21, v21, 0x10

    aput v21, v19, v20

    .line 182
    const/16 v20, 0x1

    const v21, 0xff00

    and-int v21, v21, v18

    shr-int/lit8 v21, v21, 0x8

    aput v21, v19, v20

    .line 183
    const/16 v20, 0x2

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    aput v18, v19, v20

    .line 184
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v18

    sub-int v18, v35, v18

    .line 185
    const/16 v20, 0x0

    aget v20, v19, v20

    mul-int v20, v20, v18

    add-int v16, v16, v20

    .line 186
    const/16 v20, 0x1

    aget v20, v19, v20

    mul-int v20, v20, v18

    add-int v14, v14, v20

    .line 187
    const/16 v20, 0x2

    aget v20, v19, v20

    mul-int v18, v18, v20

    add-int v17, v17, v18

    .line 188
    if-lez v13, :cond_5

    .line 189
    const/16 v18, 0x0

    aget v18, v19, v18

    add-int v10, v10, v18

    .line 190
    const/16 v18, 0x1

    aget v18, v19, v18

    add-int v11, v11, v18

    .line 191
    const/16 v18, 0x2

    aget v18, v19, v18

    add-int v12, v12, v18

    .line 178
    :goto_7
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_5

    .line 193
    :cond_5
    const/16 v18, 0x0

    aget v18, v19, v18

    add-int v6, v6, v18

    .line 194
    const/16 v18, 0x1

    aget v18, v19, v18

    add-int v7, v7, v18

    .line 195
    const/16 v18, 0x2

    aget v18, v19, v18

    add-int v8, v8, v18

    goto :goto_7

    .line 202
    :cond_6
    aget v6, v34, v16

    aput v6, v30, v15

    .line 203
    aget v6, v34, v14

    aput v6, v31, v15

    .line 204
    aget v6, v34, v17

    aput v6, v32, v15

    .line 206
    sub-int v6, v13, p1

    add-int v6, v6, v29

    rem-int v6, v6, v29

    aget-object v6, v4, v6

    .line 213
    const/4 v7, 0x0

    aget v8, v6, v7

    .line 214
    const/4 v7, 0x1

    aget v12, v6, v7

    .line 215
    const/4 v7, 0x2

    aget v36, v6, v7

    .line 217
    if-nez v26, :cond_7

    .line 218
    add-int v7, v18, p1

    add-int/lit8 v7, v7, 0x1

    move/from16 v0, v27

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    aput v7, v33, v18

    .line 220
    :cond_7
    aget v7, v33, v18

    add-int v7, v7, v25

    aget v7, v3, v7

    .line 222
    const/4 v10, 0x0

    const/high16 v11, 0xff0000

    and-int/2addr v11, v7

    shr-int/lit8 v11, v11, 0x10

    aput v11, v6, v10

    .line 223
    const/4 v10, 0x1

    const v11, 0xff00

    and-int/2addr v11, v7

    shr-int/lit8 v11, v11, 0x8

    aput v11, v6, v10

    .line 224
    const/4 v10, 0x2

    and-int/lit16 v7, v7, 0xff

    aput v7, v6, v10

    .line 226
    const/4 v7, 0x0

    aget v7, v6, v7

    add-int v22, v22, v7

    .line 227
    const/4 v7, 0x1

    aget v7, v6, v7

    add-int v23, v23, v7

    .line 228
    const/4 v7, 0x2

    aget v6, v6, v7

    add-int v24, v24, v6

    .line 230
    sub-int v6, v16, v19

    add-int v10, v6, v22

    .line 231
    sub-int v6, v14, v20

    add-int v7, v6, v23

    .line 232
    sub-int v6, v17, v21

    add-int v11, v6, v24

    .line 234
    add-int/lit8 v6, v13, 0x1

    rem-int v6, v6, v29

    .line 235
    rem-int v13, v6, v29

    aget-object v13, v4, v13

    .line 237
    sub-int v8, v19, v8

    const/4 v14, 0x0

    aget v14, v13, v14

    add-int v19, v8, v14

    .line 238
    sub-int v8, v20, v12

    const/4 v12, 0x1

    aget v12, v13, v12

    add-int v20, v8, v12

    .line 239
    sub-int v8, v21, v36

    const/4 v12, 0x2

    aget v12, v13, v12

    add-int v21, v8, v12

    .line 241
    const/4 v8, 0x0

    aget v8, v13, v8

    sub-int v22, v22, v8

    .line 242
    const/4 v8, 0x1

    aget v8, v13, v8

    sub-int v23, v23, v8

    .line 243
    const/4 v8, 0x2

    aget v8, v13, v8

    sub-int v24, v24, v8

    .line 245
    add-int/lit8 v8, v15, 0x1

    .line 200
    add-int/lit8 v12, v18, 0x1

    move v13, v6

    move v14, v7

    move v15, v8

    move/from16 v16, v10

    move/from16 v17, v11

    move/from16 v18, v12

    goto/16 :goto_6

    .line 250
    :cond_8
    move/from16 v0, p1

    neg-int v6, v0

    mul-int/2addr v6, v5

    .line 252
    move/from16 v0, p1

    neg-int v0, v0

    move/from16 v17, v0

    const/4 v7, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v14, 0x0

    :goto_8
    move/from16 v0, v17

    move/from16 v1, p1

    if-le v0, v1, :cond_9

    .line 283
    const/16 v20, 0x0

    move v6, v14

    move/from16 v17, p1

    move/from16 v18, v19

    move/from16 v21, v8

    move/from16 v22, v10

    move/from16 v23, v11

    move/from16 v24, v13

    move/from16 v25, v7

    :goto_9
    move/from16 v0, v20

    if-lt v0, v9, :cond_c

    .line 249
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_4

    .line 253
    :cond_9
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v18

    add-int v18, v18, v19

    .line 255
    add-int v20, v17, p1

    aget-object v20, v4, v20

    .line 257
    const/16 v21, 0x0

    aget v22, v30, v18

    aput v22, v20, v21

    .line 258
    const/16 v21, 0x1

    aget v22, v31, v18

    aput v22, v20, v21

    .line 259
    const/16 v21, 0x2

    aget v22, v32, v18

    aput v22, v20, v21

    .line 261
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v21

    sub-int v21, v35, v21

    .line 263
    aget v22, v30, v18

    mul-int v22, v22, v21

    add-int v14, v14, v22

    .line 264
    aget v22, v31, v18

    mul-int v22, v22, v21

    add-int v16, v16, v22

    .line 265
    aget v18, v32, v18

    mul-int v18, v18, v21

    add-int v15, v15, v18

    .line 267
    if-lez v17, :cond_b

    .line 268
    const/16 v18, 0x0

    aget v18, v20, v18

    add-int v12, v12, v18

    .line 269
    const/16 v18, 0x1

    aget v18, v20, v18

    add-int v13, v13, v18

    .line 270
    const/16 v18, 0x2

    aget v18, v20, v18

    add-int v7, v7, v18

    .line 277
    :goto_a
    move/from16 v0, v17

    move/from16 v1, v28

    if-ge v0, v1, :cond_a

    .line 278
    add-int/2addr v6, v5

    .line 252
    :cond_a
    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    .line 272
    :cond_b
    const/16 v18, 0x0

    aget v18, v20, v18

    add-int v8, v8, v18

    .line 273
    const/16 v18, 0x1

    aget v18, v20, v18

    add-int v10, v10, v18

    .line 274
    const/16 v18, 0x2

    aget v18, v20, v18

    add-int v11, v11, v18

    goto :goto_a

    .line 285
    :cond_c
    const/high16 v7, -0x1000000

    aget v8, v3, v18

    and-int/2addr v7, v8

    aget v8, v34, v6

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v7, v8

    aget v8, v34, v16

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    aget v8, v34, v15

    or-int/2addr v7, v8

    aput v7, v3, v18

    .line 287
    sub-int v7, v17, p1

    add-int v7, v7, v29

    rem-int v7, v7, v29

    aget-object v7, v4, v7

    .line 294
    const/4 v8, 0x0

    aget v11, v7, v8

    .line 295
    const/4 v8, 0x1

    aget v13, v7, v8

    .line 296
    const/4 v8, 0x2

    aget v26, v7, v8

    .line 298
    if-nez v19, :cond_d

    .line 299
    add-int v8, v20, v35

    move/from16 v0, v28

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    mul-int/2addr v8, v5

    aput v8, v33, v20

    .line 301
    :cond_d
    aget v8, v33, v20

    add-int v8, v8, v19

    .line 303
    const/4 v10, 0x0

    aget v14, v30, v8

    aput v14, v7, v10

    .line 304
    const/4 v10, 0x1

    aget v14, v31, v8

    aput v14, v7, v10

    .line 305
    const/4 v10, 0x2

    aget v8, v32, v8

    aput v8, v7, v10

    .line 307
    const/4 v8, 0x0

    aget v8, v7, v8

    add-int/2addr v12, v8

    .line 308
    const/4 v8, 0x1

    aget v8, v7, v8

    add-int v24, v24, v8

    .line 309
    const/4 v8, 0x2

    aget v7, v7, v8

    add-int v25, v25, v7

    .line 311
    sub-int v6, v6, v21

    add-int/2addr v6, v12

    .line 312
    sub-int v7, v16, v22

    add-int v8, v7, v24

    .line 313
    sub-int v7, v15, v23

    add-int v7, v7, v25

    .line 315
    add-int/lit8 v10, v17, 0x1

    rem-int v10, v10, v29

    .line 316
    aget-object v15, v4, v10

    .line 318
    sub-int v11, v21, v11

    const/4 v14, 0x0

    aget v14, v15, v14

    add-int/2addr v14, v11

    .line 319
    sub-int v11, v22, v13

    const/4 v13, 0x1

    aget v13, v15, v13

    add-int v22, v11, v13

    .line 320
    sub-int v11, v23, v26

    const/4 v13, 0x2

    aget v13, v15, v13

    add-int v23, v11, v13

    .line 322
    const/4 v11, 0x0

    aget v11, v15, v11

    sub-int/2addr v12, v11

    .line 323
    const/4 v11, 0x1

    aget v16, v15, v11

    .line 324
    const/4 v11, 0x2

    aget v11, v15, v11

    sub-int v25, v25, v11

    .line 326
    add-int v11, v18, v5

    .line 283
    add-int/lit8 v13, v20, 0x1

    sub-int v24, v24, v16

    move v15, v7

    move/from16 v16, v8

    move/from16 v17, v10

    move/from16 v18, v11

    move/from16 v20, v13

    move/from16 v21, v14

    goto/16 :goto_9
.end method

.method public static getBlurImage(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .registers 9

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 115
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p1

    float-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 117
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 118
    int-to-float v2, v5

    div-float/2addr v2, p1

    int-to-float v3, v5

    div-float/2addr v3, p1

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 119
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 120
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFlags(I)V

    .line 121
    int-to-float v3, v4

    int-to-float v4, v4

    invoke-virtual {v1, p0, v3, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 122
    invoke-static {v0, p2, v5}, Lorg/voiddog/dragbackactivity/util/BlurUtil;->fastBlur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 123
    return-object v0
.end method

.method public static getBlurImgFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 9

    const/16 v0, 0x3e8

    const/4 v6, 0x1

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 58
    invoke-static {p0, v0, v0}, Lorg/voiddog/dragbackactivity/util/BlurUtil;->getViewCacheWithMaxSize(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 59
    if-nez v0, :cond_0

    .line 60
    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 79
    :goto_0
    return-object v0

    .line 63
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 64
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x3c

    invoke-virtual {v0, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 66
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 69
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-le v4, v5, :cond_1

    .line 70
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 71
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 72
    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 73
    const/4 v4, 0x0

    array-length v5, v1

    invoke-static {v1, v4, v5, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v4, 0xc

    int-to-float v4, v4

    invoke-static {v1, v0, v4, v6}, Lorg/voiddog/dragbackactivity/util/BlurUtil;->blurWithRenderScript(Landroid/content/Context;Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    .line 78
    :goto_1
    const-string v1, "BlurView"

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v6, "\u83b7\u53d6blur\u6240\u9700\u65f6\u95f4: +"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 76
    :cond_1
    int-to-float v1, v6

    const/16 v4, 0x8

    invoke-static {v0, v1, v4}, Lorg/voiddog/dragbackactivity/util/BlurUtil;->getBlurImage(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method public static getBlurWhiteBgBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 11

    const/4 v3, 0x0

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 38
    invoke-static {p0}, Lorg/voiddog/dragbackactivity/util/BlurUtil;->getBlurImgFromView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x5

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v6, v0

    .line 44
    :goto_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 45
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 48
    const v1, 0x66ffffff

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 50
    int-to-float v1, v3

    int-to-float v2, v3

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 52
    const-string v0, "BlurView"

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "ImageUtil blur time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v8

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-object v6

    :cond_0
    move-object v6, v0

    goto :goto_0
.end method

.method private static getViewCacheWithMaxSize(Landroid/view/View;II)Landroid/graphics/Bitmap;
    .registers 8

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 336
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 338
    invoke-virtual {p0, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 339
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-nez v1, :cond_1

    .line 340
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->measure(II)V

    .line 344
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v4, v4, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 347
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 348
    int-to-float v2, v4

    cmpl-float v2, v0, v2

    if-lez v2, :cond_2

    int-to-float v2, v4

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_3

    .line 349
    :cond_2
    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 373
    :goto_0
    return-object v0

    .line 352
    :cond_3
    int-to-float v2, p1

    div-float/2addr v2, v0

    int-to-float v3, p2

    div-float/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 353
    mul-float/2addr v0, v2

    float-to-int v0, v0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 354
    sget-object v3, Lorg/voiddog/dragbackactivity/util/BlurUtil;->S_DRAW_BITMAP:Landroid/graphics/Bitmap;

    if-nez v3, :cond_5

    .line 355
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lorg/voiddog/dragbackactivity/util/BlurUtil;->S_DRAW_BITMAP:Landroid/graphics/Bitmap;

    .line 365
    :cond_4
    :goto_1
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 366
    sget-object v1, Lorg/voiddog/dragbackactivity/util/BlurUtil;->S_DRAW_BITMAP:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 367
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 370
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 371
    invoke-virtual {p0, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 373
    sget-object v0, Lorg/voiddog/dragbackactivity/util/BlurUtil;->S_DRAW_BITMAP:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 358
    :cond_5
    sget-object v3, Lorg/voiddog/dragbackactivity/util/BlurUtil;->S_DRAW_BITMAP:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v3, v0, :cond_6

    sget-object v3, Lorg/voiddog/dragbackactivity/util/BlurUtil;->S_DRAW_BITMAP:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eq v3, v1, :cond_4

    .line 360
    :cond_6
    sget-object v3, Lorg/voiddog/dragbackactivity/util/BlurUtil;->S_DRAW_BITMAP:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 361
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lorg/voiddog/dragbackactivity/util/BlurUtil;->S_DRAW_BITMAP:Landroid/graphics/Bitmap;

    goto :goto_1
.end method
