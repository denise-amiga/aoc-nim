import std/times

type
  Vec2*[T] = tuple
    x: T
    y: T

proc `+`*[T](a, b: Vec2[T]): Vec2[T] =
  result.x = a.x + b.x
  result.y = a.y + b.y

proc `-`*[T](a, b: Vec2[T]): Vec2[T] =
  result.x = a.x - b.x
  result.y = a.y - b.y

proc `*`*[T](a: Vec2[T], n: int): Vec2[T] =
  result.x = a.x * n
  result.y = a.y * n

proc `\`*[T](a: Vec2[T], n: int): Vec2[T] =
  result.x = a.x div n
  result.y = a.y div n

proc `+=`*[T](a: var Vec2[T], b: Vec2[T]) =
  a.x += b.x
  a.y += b.y

proc `-=`*[T](a: var Vec2[T], b: Vec2[T]) =
  a.x -= b.x
  a.y -= b.y

proc `*=`*[T](a: var Vec2[T], n: int) =
  a.x *= n
  a.y *= n

proc `\=`*[T](a: var Vec2[T], n: int) =
  a.x = a.x div n
  a.y = a.y div n

type
  Vec3*[T] = tuple
    x: T
    y: T
    z: T

proc `+`*[T](a, b: Vec3[T]): Vec3[T] =
  result.x = a.x + b.x
  result.y = a.y + b.y
  result.z = a.z + b.z

proc `-`*[T](a, b: Vec3[T]): Vec3[T] =
  result.x = a.x - b.x
  result.y = a.y - b.y
  result.z = a.z - b.z

proc `*`*[T](a: Vec3[T], n: int): Vec3[T] =
  result.x = a.x * n
  result.y = a.y * n
  result.z = a.z * n

proc `\`*[T](a: Vec3[T], n: int): Vec3[T] =
  result.x = a.x div n
  result.y = a.y div n
  result.z = a.z div n

proc `+=`*[T](a: var Vec3[T], b: Vec3[T]) =
  a.x += b.x
  a.y += b.y
  a.z += b.z

proc `-=`*[T](a: var Vec3[T], b: Vec3[T]) =
  a.x -= b.x
  a.y -= b.y
  a.z -= b.z

proc `*=`*[T](a: var Vec3[T], n: int) =
  a.x *= n
  a.y *= n
  a.z *= n

proc `\=`*[T](a: var Vec3[T], n: int) =
  a.x = a.x div n
  a.y = a.y div n
  a.z = a.z div n

template bench*(body: untyped) =
  block:
    let t1 = cpuTime()
    let z = body
    echo z, "\nTime: ", (cpuTime() - t1) * 1000, " ms."
